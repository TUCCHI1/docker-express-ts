FROM node:16.14.2-alpine

WORKDIR /app

# パッケージインストール
COPY ./app/package.json ./app/yarn.lock ./
RUN yarn install

# ファイルをコピー
COPY ./app .

# ローカルサーバー起動
ENTRYPOINT [ "yarn", "dev" ]