import socket

HOST = '127.0.0.1'
PORT = 8080

# 创建 socket 对象
with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as server_socket:
    # 绑定地址和端口
    server_socket.bind((HOST, PORT))
    # 开始监听
    server_socket.listen()
    print(f"服务器正在监听 {HOST}:{PORT}")

    # 等待客户端连接
    client_socket, client_address = server_socket.accept()
    with client_socket:
        print(f"客户端 {client_address} 已连接")
        # 接收客户端发送的数据
        data = client_socket.recv(1024)
        print(f"接收到的数据：{data.decode()}")
        # 向客户端发送数据
        client_socket.sendall(b'Hello from server!')
