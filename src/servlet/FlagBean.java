package servlet;

public class FlagBean {
public String flag;
public int id;
private static FlagBean flagbean;
public static FlagBean getInstance(){
	if(flagbean==null){
		flagbean=new FlagBean();
	}
	return flagbean;
}

public void setFlag(String flag){
	this.flag=flag;
}

public String getFlag(){
	return flag;
}

public void setId(int id){
	this.id=id;
}

public int getId(){
	return id;
}

}
