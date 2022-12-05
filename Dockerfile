FROM theasp/clojurescript-nodejs:shadow-cljs-alpine
WORKDIR /4ever-clojure
COPY . .
RUN apk --no-cache add git
RUN npm install
RUN npx shadow-cljs release :my-build
CMD ["npx", "shadow-cljs", "server"]
EXPOSE 8000 9630
