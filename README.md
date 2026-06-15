# 1 先写idl
# 2 执行命令
```go 
hz new -mod github.com/yao-zhi-yuan/hertz-student -idl idl/api.thrift
go mod edit -replace github.com/apache/thrift=github.com/apache/thrift@v0.13.0
go mod tidy
```

# 3 修改biz/handler/student/student_service.go业务逻辑
# 4 执行命令
```go
go build
./hertz-student
```
# 5 测试
```go
# 查询
curl http://127.0.0.1:8888/query?id=1
# 详细查询
curl -v http://127.0.0.1:8888/query?id=1
# 增加
curl http://127.0.0.1:8888/add-student-info -X POST -d '{"id":1,"name":"XiaoMing","favorite":"apple","course":"math"}' -H "Content-Type: application/json"
```
