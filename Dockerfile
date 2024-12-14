# ベースイメージを指定
FROM golang:1.23.4

# 作業ディレクトリを設定
WORKDIR /app

# Goモジュールと依存関係をコピー
COPY go.mod go.sum ./
RUN go mod download

# アプリケーションのソースコードをコピー
COPY . .

# アプリケーションをビルド
RUN go build -o main .

# アプリケーションを実行
CMD ["./main"]
