package main
import(
	"fmt"
	"encoding/json"
)
//有时服务器返回的字段希望是头字母小写的，就可以用tag方法
type Monster struct{
	Name string `json:"name"`  //反斜杠里就是tag方法，注意后面要用双引号
	Age int		`json:"age"`
	Skill string `json:"skill"`
}

func main(){
	mons := Monster{"groo", 144, "laugh"}
	jsonmons, err := json.Marshal(mons)  //json.Marshal接收一个对象，返回符合json的格式，有两个参数，第二个为错误信息
	if err != nil{
		fmt.Println("json传入有错误", err)
	} else{
		fmt.Println("返回的json格式为:", string(jsonmons)) //如果不用string强转，返回的则是一串[]uint8数字
	}
	fmt.Printf("jsonmons type is %T", jsonmons) //类型为[]uint8
}
//[]byte也就是[]uint8
