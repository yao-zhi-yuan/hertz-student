namespace go student

struct Student{
    1: i64 id (api.body="id"),
    2: string name (api.body="name"),
    3: string favorite (api.body="favorite"),
    4: string course (api.body="course"),
}

struct QueryRequest{
    1: i64 id (api.query="id"),
}

service StudentService{
    Student Get(1: QueryRequest req) (api.get="/query")
    Student Add(1: Student req) (api.post="add-student-info")
}