# 使用官方 Python 基础镜像
FROM python:3.9

# 设置工作目录
WORKDIR /app

# 创建一个简单的 Python 脚本，打印 "Hello World"
RUN echo 'print("Hello World")' > hello.py

# 运行 Python 脚本
CMD ["python", "hello.py"]
