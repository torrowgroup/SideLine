/**
 * 
 */
//<script type="text/javascript">
		function $(id) {
				return document.getElementById(id);
		}
         function check() {
        	 if($('name').value=="") {
                alert("请输入真实姓名!");
                return false;
        	 }
        	 if($('age').value==""){
	                alert("请输入年龄!");
	                return false;
        	 }
        	 if($("sex").value==""){
	                alert("请输入性别!");
	                return false;
        	 }
        	 if($("location").value==""){
	                alert("请输入所在地区!");
	                return false;
        	 }
        	 if($("education").value==""){
	                alert("请输入最高学历!");
	                return false;
        	 }
        	 if($("experience").value==""){
	                alert("请输入个人工作经验!");
	                return false;
        	 }
        	 if($("phone").value==""){
	                alert("请输入联系电话!");
	                return false;
        	 }
        	 if($("skill").value==""){
	                alert("请输入兼职意向!");
	                return false;
        	 }
         }
//</script>