# ベースイメージとしてNode.jsを使用
FROM node:16

# 作業ディレクトリを設定
WORKDIR /app

# パッケージファイルをコピー
COPY package.json package-lock.json ./

# 必要なパッケージをインストール
RUN npm install

# アプリケーションコードをコピー
COPY . .

# 開発用サーバーを起動するポートを指定
EXPOSE 3001

# アプリケーションを起動
CMD ["npm", "start"]
