# README

### 開發環境
* Spring Boot 2.7.11
* JDK 14 at least
* Database AWS RDS

### Git flow

* master  : 正式，devlop 測試後上
* hotfix  : master 仍有問題，臨時修復
* devlop  : 開發區
* feature : devlop 分出開發功能

### Swagger Url

* http://localhost:8080/reborn_new_life/swagger-ui/

### Druid Url

* http://localhost:8080/reborn_new_life/druid/

### 寫作規範

* Api 須加 Swagger tag
* Controller 須繼承 BaseNewLife
```
@Api(tags = "Hello 首頁")
@Controller
public class HelloController extends BaseNewLife 
```
* Entity 類別須加上 Annotation : @EntityListeners(EntityLogListener.class)
