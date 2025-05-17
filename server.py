from flask import Flask, request, jsonify
import json

app = Flask(__name__)

# 存储当前执行脚本的玩家列表
active_players = {}

# 存储待踢出的玩家
kick_request = None

@app.route('/player', methods=['POST'])
def add_player():
    data = request.json
    user_id = data.get('userId')
    if user_id:
        active_players[user_id] = data
        return {"status": "success"}, 200
    return {"status": "error", "message": "无效的用户ID"}, 400

@app.route('/players', methods=['GET'])
def get_players():
    return jsonify(active_players)

@app.route('/kick/<int:user_id>', methods=['POST'])
def kick_player(user_id):
    global kick_request
    if user_id in active_players:
        kick_request = {"userId": user_id}
        return {"status": "success", "message": f"已请求踢出用户ID {user_id}"}, 200
    return {"status": "error", "message": "用户不在列表中"}, 404

@app.route('/check_kick', methods=['GET'])
def check_kick():
    global kick_request
    if kick_request:
        temp = kick_request
        user_id = kick_request['userId']
        if user_id in active_players:
            del active_players[user_id]
        kick_request = None
        return json.dumps(temp)
    return json.dumps({})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)