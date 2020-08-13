# Spring_Booklist_CRUD


<h3>Booklist CRUD 만드는 단계</h3>
<p>
2020/08/12 Bookapp 사이트 만들어보기

1. spring legacy 생성(spring mvn project로)

2. DB 접속 - table 생성
create table booklist (
  id int not null auto_increment, 
  title varchar(20), 
  author varchar(10), 
  comment text,
  regdate datetime default current_timestamp,
  primary key(id) 
 );

3. 라이브러리 추가(pom.xml)
mysql connector mvn
spring jdbc
spring 버전 통일 ${org.springframework-version}

-그리고 run해서 defualt 페이지 잘 나오는지 확인해보기

4. bean을 만든다

private int id;    
private String title;    
private String author;    
private String comment;   

변수 적고, getters setters 받아오기

5. root-context.xml
jdbcTemplate setting

6. Dao
import

http://localhost:8087/mypage/
잘 되는지 확인해보기

7. Controller
Create / List(View) / Update /Delete
@Controller annotation

8. heroku에서 test해보기
heroku plugins:install java[enter]
mvn package
heroku war:deploy .\target.war --app appname




</p>
