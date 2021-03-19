FROM pnginx
RUN apt-get install -y nodejs npm && npm update
COPY /client /app
WORKDIR /app
RUN npm rebuild node-sass && npm install && npm run build
RUN cp -r /app/dist/* /var/www/html
EXPOSE 80
#https://github.com/d2phap/vuejs-todo
#docker build . -t spa
#docker run -d -p 8000:80 spa