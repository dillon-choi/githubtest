FROM node:20-alpine

# 2. 작업 디렉토리 생성
WORKDIR /app

# 3. package.json, package-lock.json 복사
COPY package*.json ./

# 4. 의존성 설치
RUN npm install

# 5. 앱 코드 복사
COPY . .

# 6. 포트 오픈
EXPOSE 3000

# 7. 앱 실행 명령어
CMD ["node", "index.js"]