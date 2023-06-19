# java -jar ./main-1.1.2.jar --spring.profiles.active=mallprod,wxLogin
nohup java -jar ./main-1.1.2.jar --spring.profiles.active=mallprod,wxLogin > info.log 2>&1 &
# java -jar .\main-1.1.2.jar --spring.profiles.active=malldev,wxLogin