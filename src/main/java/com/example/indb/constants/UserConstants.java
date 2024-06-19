package com.example.indb.constants;

public class UserConstants {

    public static final String USERID_PATTERN = "^[a-zA-Z0-9]{7,30}$";
    public static final String PASSWORD_PATTERN = "^(?=.*[A-Za-z])(?=.*[@#$%^&+=!*])(?=.*\\d).{8,30}$";
    public static final String USERNAME_PATTERN = "[a-zA-Z가-힣]{1,30}";
    public static final String USER_NOT_FOUND ="아이디 또는 비밀번호가 일치하지않습니다.";

    public static final String USERID_NULL = "아이디를 입력해주세요";

    public static final String PASSWORD_NULL = "비밀번호를 입력해주세요";

    public static final String INVALID_CITYCODE ="지역코드 불일치 올바른 지역코드를 다시 입력해주세요";

    public static final String NOT_ALLOWED_DATE ="허용되지 않는 날짜입니다. 날짜를 다시 확인해주세요";

}
