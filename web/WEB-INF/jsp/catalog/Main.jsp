<%--
  Created by IntelliJ IDEA.
  User: SuanCaiyu
  Date: 2019-10-02
  Time: 19:23
  To change this template use File | Settings | File Templates.
--%>
<%@include file="../common/IncludeTop.jsp"%>

<div id="Welcome">
    <div id="WelcomeContent">
        Welcome to MyPetStore!
    </div>
</div>

<div id="Main">
    <div id="Sidebar">
        <div id="SidebarContent">
            <a href="viewcategory?categoryId=FISH"><img src="images/fish_icon.gif" /></a>
            <br/> Saltwater, Freshwater <br/>
            <a href="viewcategory?categoryId=DOGS"><img src="images/dogs_icon.gif" /></a>
            <br /> Various Breeds <br />
            <a href="viewcategory?categoryId=CATS"><img src="images/cats_icon.gif" /></a>
            <br /> Various Breeds, Exotic Varieties <br />
            <a href="viewcategory?categoryId=REPTILES"><img src="images/reptiles_icon.gif" /></a>
            <br /> Lizards, Turtles, Snakes <br />
            <a href="viewcategory?categoryId=BIRDS"><img src="images/birds_icon.gif" /></a>
            <br /> Exotic Varieties
        </div>
    </div>

    <div id="MainImage">
        <div id="MainImageContent">
            <map name="estoremap">
                <area alt="Birds" coords="72,2,280,250" href="viewcategory?categoryId=BIRDS" shape="rect" />
                <area alt="Fish" coords="2,180,72,250" href="viewcategory?categoryId=FISH" shape="rect" />
                <area alt="Dogs" coords="60,250,130,320" href="viewcategory?categoryId=DOGS" shape="rect" />
                <area alt="Reptiles" coords="140,270,210,340" href="viewcategory?categoryId=REPTILES" shape="rect" />
                <area alt="Cats" coords="225,240,295,310" href="viewcategory?categoryId=CATS" shape="rect" />
                <area alt="Birds" coords="280,180,350,250" href="viewcategory?categoryId=BIRDS" shape="rect" />
            </map>
            <img height="355" src="images/splash.gif" align="middle" usemap="#estoremap" width="350" />
        </div>
    </div>
    <div id="Separator">&nbsp;</div>
</div>

<%@include file="../common/IncludeBottom.jsp"%>