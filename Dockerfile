FROM java:8
COPY src /home/root/avahelloworld/src
WORKDIR /home/root/avahelloworld
RUN mkdir bin && javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
