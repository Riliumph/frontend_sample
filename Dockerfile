FROM node:20-bookworm-slim
ARG WORK_DIR
# uid=1000でnodeユーザが定義済み
USER node
WORKDIR "$WORK_DIR"

