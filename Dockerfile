# 使用官方 Python 基础镜像
FROM python:3.9

# 设置工作目录
WORKDIR /app

# 设置环境变量
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# 安装依赖
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 复制项目文件
COPY . .

# 暴露端口
EXPOSE 8000

# 运行 Django 服务器
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
