»
ZC:\Users\USUARIO\repositorios\Arquitectura\crud-net-mvc\TestCrud\App_Start\BundleConfig.cs
	namespace 	
TestCrud
 
{ 
public 

class 
BundleConfig 
{ 
public		 
static		 
void		 
RegisterBundles		 *
(		* +
BundleCollection		+ ;
bundles		< C
)		C D
{

 	
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) ;
); <
.< =
Include= D
(D E
$str 7
)7 8
)8 9
;9 :
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str 4
)4 5
)5 6
;6 7
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str /
)/ 0
)0 1
;1 2
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str .
). /
)/ 0
;0 1
bundles 
. 
Add 
( 
new 
StyleBundle '
(' (
$str( 7
)7 8
.8 9
Include9 @
(@ A
$str /
,/ 0
$str *
)* +
)+ ,
;, -
} 	
} 
} …
ZC:\Users\USUARIO\repositorios\Arquitectura\crud-net-mvc\TestCrud\App_Start\FilterConfig.cs
	namespace 	
TestCrud
 
{ 
public 

class 
FilterConfig 
{ 
public 
static 
void !
RegisterGlobalFilters 0
(0 1"
GlobalFilterCollection1 G
filtersH O
)O P
{		 	
filters

 
.

 
Add

 
(

 
new

  
HandleErrorAttribute

 0
(

0 1
)

1 2
)

2 3
;

3 4
} 	
} 
} ã
YC:\Users\USUARIO\repositorios\Arquitectura\crud-net-mvc\TestCrud\App_Start\RouteConfig.cs
	namespace 	
TestCrud
 
{		 
public

 

class

 
RouteConfig

 
{ 
public 
static 
void 
RegisterRoutes )
() *
RouteCollection* 9
routes: @
)@ A
{ 	
routes 
. 
IgnoreRoute 
( 
$str ;
); <
;< =
routes 
. 
MapRoute 
( 
name 
: 
$str 
,  
url 
: 
$str 1
,1 2
defaults 
: 
new 
{ 

controller  *
=+ ,
$str- 3
,3 4
action5 ;
=< =
$str> E
,E F
idG I
=J K
UrlParameterL X
.X Y
OptionalY a
}b c
) 
; 
} 	
} 
} ÷<
cC:\Users\USUARIO\repositorios\Arquitectura\crud-net-mvc\TestCrud\Controllers\empleadosController.cs
	namespace 	
TestCrud
 
. 
Controllers 
{ 
public 

class 
empleadosController $
:% &

Controller' 1
{ 
private 
entities 
db 
= 
new !
entities" *
(* +
)+ ,
;, -
public 
ActionResult 
Index !
(! "
)" #
{ 	
return 
View 
( 
db 
. 
tblEmpleados '
.' (
ToList( .
(. /
)/ 0
)0 1
;1 2
} 	
public 
ActionResult 
Details #
(# $
int$ '
?' (
id) +
)+ ,
{ 	
if 
( 
id 
== 
null 
) 
{ 
return 
new  
HttpStatusCodeResult /
(/ 0
HttpStatusCode0 >
.> ?

BadRequest? I
)I J
;J K
} 
tblEmpleados 
tblEmpleados %
=& '
db( *
.* +
tblEmpleados+ 7
.7 8
Find8 <
(< =
id= ?
)? @
;@ A
if 
( 
tblEmpleados 
== 
null  $
)$ %
{   
return!! 
HttpNotFound!! #
(!!# $
)!!$ %
;!!% &
}"" 
return## 
View## 
(## 
tblEmpleados## $
)##$ %
;##% &
}$$ 	
public'' 
ActionResult'' 
Create'' "
(''" #
)''# $
{(( 	
return)) 
View)) 
()) 
))) 
;)) 
}** 	
[// 	
HttpPost//	 
]// 
[00 	$
ValidateAntiForgeryToken00	 !
]00! "
public11 
ActionResult11 
Create11 "
(11" #
[11# $
Bind11$ (
(11( )
Include11) 0
=111 2
$str113 I
)11I J
]11J K
tblEmpleados11L X
tblEmpleados11Y e
)11e f
{22 	
if33 
(33 

ModelState33 
.33 
IsValid33 "
)33" #
{44 
db55 
.55 
tblEmpleados55 
.55  
Add55  #
(55# $
tblEmpleados55$ 0
)550 1
;551 2
db66 
.66 
SaveChanges66 
(66 
)66  
;66  !
return77 
RedirectToAction77 '
(77' (
$str77( /
)77/ 0
;770 1
}88 
return:: 
View:: 
(:: 
tblEmpleados:: $
)::$ %
;::% &
};; 	
public>> 
ActionResult>> 
Edit>>  
(>>  !
int>>! $
?>>$ %
id>>& (
)>>( )
{?? 	
if@@ 
(@@ 
id@@ 
==@@ 
null@@ 
)@@ 
{AA 
returnBB 
newBB  
HttpStatusCodeResultBB /
(BB/ 0
HttpStatusCodeBB0 >
.BB> ?

BadRequestBB? I
)BBI J
;BBJ K
}CC 
tblEmpleadosDD 
tblEmpleadosDD %
=DD& '
dbDD( *
.DD* +
tblEmpleadosDD+ 7
.DD7 8
FindDD8 <
(DD< =
idDD= ?
)DD? @
;DD@ A
ifEE 
(EE 
tblEmpleadosEE 
==EE 
nullEE  $
)EE$ %
{FF 
returnGG 
HttpNotFoundGG #
(GG# $
)GG$ %
;GG% &
}HH 
returnII 
ViewII 
(II 
tblEmpleadosII $
)II$ %
;II% &
}JJ 	
[OO 	
HttpPostOO	 
]OO 
[PP 	$
ValidateAntiForgeryTokenPP	 !
]PP! "
publicQQ 
ActionResultQQ 
EditQQ  
(QQ  !
[QQ! "
BindQQ" &
(QQ& '
IncludeQQ' .
=QQ/ 0
$strQQ1 G
)QQG H
]QQH I
tblEmpleadosQQJ V
tblEmpleadosQQW c
)QQc d
{RR 	
ifSS 
(SS 

ModelStateSS 
.SS 
IsValidSS "
)SS" #
{TT 
dbUU 
.UU 
EntryUU 
(UU 
tblEmpleadosUU %
)UU% &
.UU& '
StateUU' ,
=UU- .
EntityStateUU/ :
.UU: ;
ModifiedUU; C
;UUC D
dbVV 
.VV 
SaveChangesVV 
(VV 
)VV  
;VV  !
returnWW 
RedirectToActionWW '
(WW' (
$strWW( /
)WW/ 0
;WW0 1
}XX 
returnYY 
ViewYY 
(YY 
tblEmpleadosYY $
)YY$ %
;YY% &
}ZZ 	
public]] 
ActionResult]] 
Delete]] "
(]]" #
int]]# &
?]]& '
id]]( *
)]]* +
{^^ 	
if__ 
(__ 
id__ 
==__ 
null__ 
)__ 
{`` 
returnaa 
newaa  
HttpStatusCodeResultaa /
(aa/ 0
HttpStatusCodeaa0 >
.aa> ?

BadRequestaa? I
)aaI J
;aaJ K
}bb 
tblEmpleadoscc 
tblEmpleadoscc %
=cc& '
dbcc( *
.cc* +
tblEmpleadoscc+ 7
.cc7 8
Findcc8 <
(cc< =
idcc= ?
)cc? @
;cc@ A
ifdd 
(dd 
tblEmpleadosdd 
==dd 
nulldd  $
)dd$ %
{ee 
returnff 
HttpNotFoundff #
(ff# $
)ff$ %
;ff% &
}gg 
returnhh 
Viewhh 
(hh 
tblEmpleadoshh $
)hh$ %
;hh% &
}ii 	
[ll 	
HttpPostll	 
,ll 

ActionNamell 
(ll 
$strll &
)ll& '
]ll' (
[mm 	$
ValidateAntiForgeryTokenmm	 !
]mm! "
publicnn 
ActionResultnn 
DeleteConfirmednn +
(nn+ ,
intnn, /
idnn0 2
)nn2 3
{oo 	
tblEmpleadospp 
tblEmpleadospp %
=pp& '
dbpp( *
.pp* +
tblEmpleadospp+ 7
.pp7 8
Findpp8 <
(pp< =
idpp= ?
)pp? @
;pp@ A
dbqq 
.qq 
tblEmpleadosqq 
.qq 
Removeqq "
(qq" #
tblEmpleadosqq# /
)qq/ 0
;qq0 1
dbrr 
.rr 
SaveChangesrr 
(rr 
)rr 
;rr 
returnss 
RedirectToActionss #
(ss# $
$strss$ +
)ss+ ,
;ss, -
}tt 	
	protectedvv 
overridevv 
voidvv 
Disposevv  '
(vv' (
boolvv( ,
	disposingvv- 6
)vv6 7
{ww 	
ifxx 
(xx 
	disposingxx 
)xx 
{yy 
dbzz 
.zz 
Disposezz 
(zz 
)zz 
;zz 
}{{ 
base|| 
.|| 
Dispose|| 
(|| 
	disposing|| "
)||" #
;||# $
}}} 	
}~~ 
} Þ
^C:\Users\USUARIO\repositorios\Arquitectura\crud-net-mvc\TestCrud\Controllers\HomeController.cs
	namespace 	
TestCrud
 
. 
Controllers 
{ 
public		 

class		 
HomeController		 
:		  !

Controller		" ,
{

 
public 
ActionResult 
Index !
(! "
)" #
{ 	
return 
View 
( 
) 
; 
} 	
public 
ActionResult 
About !
(! "
)" #
{ 	
ViewBag 
. 
Message 
= 
$str <
;< =
return 
View 
( 
) 
; 
} 	
} 
} ö
OC:\Users\USUARIO\repositorios\Arquitectura\crud-net-mvc\TestCrud\Global.asax.cs
	namespace		 	
TestCrud		
 
{

 
public 

class 
MvcApplication 
:  !
System" (
.( )
Web) ,
., -
HttpApplication- <
{ 
	protected 
void 
Application_Start (
(( )
)) *
{ 	
AreaRegistration 
. 
RegisterAllAreas -
(- .
). /
;/ 0
FilterConfig 
. !
RegisterGlobalFilters .
(. /
GlobalFilters/ <
.< =
Filters= D
)D E
;E F
RouteConfig 
. 
RegisterRoutes &
(& '

RouteTable' 1
.1 2
Routes2 8
)8 9
;9 :
BundleConfig 
. 
RegisterBundles (
(( )
BundleTable) 4
.4 5
Bundles5 <
)< =
;= >
} 	
} 
} †
[C:\Users\USUARIO\repositorios\Arquitectura\crud-net-mvc\TestCrud\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str #
)# $
]$ %
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str %
)% &
]& '
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *