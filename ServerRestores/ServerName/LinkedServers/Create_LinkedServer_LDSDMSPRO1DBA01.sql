--SCRIPT IS GOOD ONLY FOR ENVIRONMENTS
--BEGINNING VMxx

DECLARE @ENVNAME VARCHAR(15)
SET @ENVNAME = LEFT(@@SERVERNAME, 4) + 'DMSPRODBA01'

/****** Object:  LinkedServer [LDSDMSPRO1DBA01]    Script Date: 03/26/2009 15:25:57 ******/
--EXEC master.dbo.sp_addlinkedserver @server = N'LDSDMSPRO1DBA01', @srvproduct=N'<Server to link to e.g. VM01DMSPRODBA01, varchar(15), VMxxDMSPRODBA01>', @provider=N'SQLOLEDB', @datasrc=N'<Server to link to e.g. VM01DMSPRODBA01, varchar(15), VMxxDMSPRODBA01>'
EXEC master.dbo.sp_addlinkedserver @server = N'LDSDMSPRO1DBA01', @srvproduct=@ENVNAME, @provider=N'SQLOLEDB', @datasrc=@ENVNAME
 /* For security reasons the linked server remote logins password is changed with ######## */
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname=N'LDSDMSPRO1DBA01',@useself=N'False',@locallogin=NULL,@rmtuser=N'LinkedServerLogin',@rmtpassword='LinkedServerLogin'

EXEC master.dbo.sp_serveroption @server=N'LDSDMSPRO1DBA01', @optname=N'collation compatible', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LDSDMSPRO1DBA01', @optname=N'data access', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'LDSDMSPRO1DBA01', @optname=N'dist', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LDSDMSPRO1DBA01', @optname=N'pub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LDSDMSPRO1DBA01', @optname=N'rpc', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'LDSDMSPRO1DBA01', @optname=N'rpc out', @optvalue=N'true'
EXEC master.dbo.sp_serveroption @server=N'LDSDMSPRO1DBA01', @optname=N'sub', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LDSDMSPRO1DBA01', @optname=N'connect timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'LDSDMSPRO1DBA01', @optname=N'collation name', @optvalue=null
EXEC master.dbo.sp_serveroption @server=N'LDSDMSPRO1DBA01', @optname=N'lazy schema validation', @optvalue=N'false'
EXEC master.dbo.sp_serveroption @server=N'LDSDMSPRO1DBA01', @optname=N'query timeout', @optvalue=N'0'
EXEC master.dbo.sp_serveroption @server=N'LDSDMSPRO1DBA01', @optname=N'use remote collation', @optvalue=N'true'