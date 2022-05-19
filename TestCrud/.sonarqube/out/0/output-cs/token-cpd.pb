ê
ZC:\Users\USUARIO\repositorios\Arquitectura\crud-net-mvc\TestCrud\App_Start\BundleConfig.cs
	namespace 	
TestCrud
 
{ 
public 

static 
class 
BundleConfig $
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
new 
StyleBundle '
(' (
$str( 7
)7 8
.8 9
Include9 @
(@ A
$strA Z
)Z [
)[ \
;\ ]
} 	
} 
} ™
ZC:\Users\USUARIO\repositorios\Arquitectura\crud-net-mvc\TestCrud\App_Start\FilterConfig.cs
	namespace 	
TestCrud
 
{ 
public 

static 
class 
FilterConfig $
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
} ÷
YC:\Users\USUARIO\repositorios\Arquitectura\crud-net-mvc\TestCrud\App_Start\RouteConfig.cs
	namespace 	
TestCrud
 
{		 
public

 

static

 
class

 
RouteConfig

 #
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
} ÿ4
cC:\Users\USUARIO\repositorios\Arquitectura\crud-net-mvc\TestCrud\Controllers\EmpleadosController.cs
	namespace 	
TestCrud
 
. 
Controllers 
{ 
public 

class 
EmpleadosController $
:% &

Controller' 1
{ 
private 
readonly 
entities !
db" $
=% &
new' *
entities+ 3
(3 4
)4 5
;5 6
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
ActionResult 
Create "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
[   	
HttpPost  	 
]   
[!! 	$
ValidateAntiForgeryToken!!	 !
]!!! "
public"" 
ActionResult"" 
Create"" "
(""" #
[""# $
Bind""$ (
(""( )
Include"") 0
=""1 2
$str""3 I
)""I J
]""J K
tblEmpleados""L X
tblEmpleados""Y e
)""e f
{## 	
if$$ 
($$ 

ModelState$$ 
.$$ 
IsValid$$ "
)$$" #
{%% 
db&& 
.&& 
tblEmpleados&& 
.&&  
Add&&  #
(&&# $
tblEmpleados&&$ 0
)&&0 1
;&&1 2
db'' 
.'' 
SaveChanges'' 
('' 
)''  
;''  !
return(( 
RedirectToAction(( '
(((' (
$str((( /
)((/ 0
;((0 1
})) 
return++ 
View++ 
(++ 
tblEmpleados++ $
)++$ %
;++% &
},, 	
public// 
ActionResult// 
Edit//  
(//  !
int//! $
?//$ %
id//& (
)//( )
{00 	
if11 
(11 
id11 
==11 
null11 
)11 
{22 
return33 
new33  
HttpStatusCodeResult33 /
(33/ 0
HttpStatusCode330 >
.33> ?

BadRequest33? I
)33I J
;33J K
}44 
tblEmpleados55 
tblEmpleados55 %
=55& '
db55( *
.55* +
tblEmpleados55+ 7
.557 8
Find558 <
(55< =
id55= ?
)55? @
;55@ A
if66 
(66 
tblEmpleados66 
==66 
null66  $
)66$ %
{77 
return88 
HttpNotFound88 #
(88# $
)88$ %
;88% &
}99 
return:: 
View:: 
(:: 
tblEmpleados:: $
)::$ %
;::% &
};; 	
[@@ 	
HttpPost@@	 
]@@ 
[AA 	$
ValidateAntiForgeryTokenAA	 !
]AA! "
publicBB 
ActionResultBB 
EditBB  
(BB  !
[BB! "
BindBB" &
(BB& '
IncludeBB' .
=BB/ 0
$strBB1 G
)BBG H
]BBH I
tblEmpleadosBBJ V
tblEmpleadosBBW c
)BBc d
{CC 	
ifDD 
(DD 

ModelStateDD 
.DD 
IsValidDD "
)DD" #
{EE 
dbFF 
.FF 
EntryFF 
(FF 
tblEmpleadosFF %
)FF% &
.FF& '
StateFF' ,
=FF- .
EntityStateFF/ :
.FF: ;
ModifiedFF; C
;FFC D
dbGG 
.GG 
SaveChangesGG 
(GG 
)GG  
;GG  !
returnHH 
RedirectToActionHH '
(HH' (
$strHH( /
)HH/ 0
;HH0 1
}II 
returnJJ 
ViewJJ 
(JJ 
tblEmpleadosJJ $
)JJ$ %
;JJ% &
}KK 	
publicNN 
ActionResultNN 
DeleteNN "
(NN" #
intNN# &
?NN& '
idNN( *
)NN* +
{OO 	
ifPP 
(PP 
idPP 
==PP 
nullPP 
)PP 
{QQ 
returnRR 
newRR  
HttpStatusCodeResultRR /
(RR/ 0
HttpStatusCodeRR0 >
.RR> ?

BadRequestRR? I
)RRI J
;RRJ K
}SS 
tblEmpleadosTT 
tblEmpleadosTT %
=TT& '
dbTT( *
.TT* +
tblEmpleadosTT+ 7
.TT7 8
FindTT8 <
(TT< =
idTT= ?
)TT? @
;TT@ A
ifUU 
(UU 
tblEmpleadosUU 
==UU 
nullUU  $
)UU$ %
{VV 
returnWW 
HttpNotFoundWW #
(WW# $
)WW$ %
;WW% &
}XX 
returnYY 
ViewYY 
(YY 
tblEmpleadosYY $
)YY$ %
;YY% &
}ZZ 	
[]] 	
HttpPost]]	 
,]] 

ActionName]] 
(]] 
$str]] &
)]]& '
]]]' (
[^^ 	$
ValidateAntiForgeryToken^^	 !
]^^! "
public__ 
ActionResult__ 
DeleteConfirmed__ +
(__+ ,
int__, /
id__0 2
)__2 3
{`` 	
tblEmpleadosaa 
tblEmpleadosaa %
=aa& '
dbaa( *
.aa* +
tblEmpleadosaa+ 7
.aa7 8
Findaa8 <
(aa< =
idaa= ?
)aa? @
;aa@ A
dbbb 
.bb 
tblEmpleadosbb 
.bb 
Removebb "
(bb" #
tblEmpleadosbb# /
)bb/ 0
;bb0 1
dbcc 
.cc 
SaveChangescc 
(cc 
)cc 
;cc 
returndd 
RedirectToActiondd #
(dd# $
$strdd$ +
)dd+ ,
;dd, -
}ee 	
	protectedgg 
overridegg 
voidgg 
Disposegg  '
(gg' (
boolgg( ,
	disposinggg- 6
)gg6 7
{hh 	
ifii 
(ii 
	disposingii 
)ii 
{jj 
dbkk 
.kk 
Disposekk 
(kk 
)kk 
;kk 
}ll 
basemm 
.mm 
Disposemm 
(mm 
	disposingmm "
)mm" #
;mm# $
}nn 	
}oo 
}pp Þ
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