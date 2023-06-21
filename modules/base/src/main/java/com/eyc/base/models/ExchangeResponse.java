
package com.eyc.base.models;
import com.eyc.base.models.Query;
import com.eyc.base.models.Info;

public class ExchangeResponse {

private Boolean success;
private Query query;
private Info info;
private String historical;
private String date;
private Double result;

public Boolean getSuccess() {
return success;
}

public void setSuccess(Boolean success) {
this.success = success;
}

public Query getQuery() {
return query;
}

public void setQuery(Query query) {
this.query = query;
}

public Info getInfo() {
return info;
}

public void setInfo(Info info) {
this.info = info;
}

public String getHistorical() {
return historical;
}

public void setHistorical(String historical) {
this.historical = historical;
}

public String getDate() {
return date;
}

public void setDate(String date) {
this.date = date;
}

public Double getResult() {
return result;
}

public void setResult(Double result) {
this.result = result;
}

}  