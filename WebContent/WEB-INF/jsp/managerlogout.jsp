<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language="javascript">
        //防止页面后退
        history.pushState(null, null, document.URL);
        window.addEventListener('popstate', function () {
            history.pushState(null, null, document.URL);
        });
        window.location.href="/SideLine/LogoutServlet?ask=deletmanager";
    </script>
</head>
<body>
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======

>>>>>>> fb78e5a7fa32067e8acae90b63380fd4ba6ac4df
>>>>>>> 29c2e576ee83f4a2763e3e6c2c2aff243b3971e2
</body>
</html>