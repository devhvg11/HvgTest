<%@Page Language="C#" %><%@ Import Namespace="System.IO" %><!DOCTYPE html>
<html>
	<title><%# ReadMePath%></title>
	<xmp theme="united" style="display: none;">
<%# ReadMe%>
	</xmp>
	<script src="http://strapdownjs.com/v/0.2/strapdown.js"></script>
</html>
<script runat="server">
	public static readonly string ReadMePath = "README.md";
	
	public static string ReadMe;
	
	protected override void OnInit(EventArgs eventArgs)
	{	
		if (string.IsNullOrEmpty(ReadMe))
		{
			var absolutePath = this.Server.MapPath(ReadMePath);
			if (File.Exists(absolutePath))
			{
				ReadMe = File.ReadAllText(absolutePath);
			}
		}
		
		base.OnInit(eventArgs);
	} 
	
	protected override void OnLoad(EventArgs eventArgs)
	{
		base.OnLoad(eventArgs);
		this.DataBind();
	}
</script>