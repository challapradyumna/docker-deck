FROM pnginx as build
RUN apt-get install -y nodejs npm && npm update
COPY /client /app
WORKDIR /app
RUN npm rebuild node-sass && npm install && npm run build


FROM pnginx
COPY --from=build /app/dist /var/www/html
EXPOSE 80
#https://github.com/d2phap/vuejs-todo
#docker build . -t spams -f Dockerfile.ms
#docker run -d -p 8001:80 spams