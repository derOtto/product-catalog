<%--
    Document   : product_create
    Author     : Andrey Svininykh (svininykh@gmail.com)
    Copyright  : Nord Trading Network
    License    : Apache License, Version 2.0 (http://www.apache.org/licenses/LICENSE-2.0.html)
--%>

<%@include file="/WEB-INF/jsp/common/taglibs.jsp"%>
<stripes:layout-render name="/WEB-INF/jsp/common/layout_main.jsp"
                       title="User Registration"
                       pageid="UserRegistration">

    <stripes:layout-component name="button.return">
        <sdynattr:link href="/ApplicationPresent.action"
                       class="ui-btn ui-corner-all ui-icon-home ui-btn-icon-notext">
            <stripes:label name="label.home" />
        </sdynattr:link>                 
    </stripes:layout-component>

    <stripes:layout-component name="header.title">
        <stripes:label name="label.UserRegistration"/>
    </stripes:layout-component>

    <stripes:layout-component name="button.action">
    </stripes:layout-component>

    <stripes:layout-component name="content">
        <stripes:errors />
        <stripes:messages />
        <stripes:form action="/UserRegistration.action?accept">
            <div>
                <stripes:hidden name="user.role" value="3"/>
                <stripes:hidden name="user.visible" value="false"/>
            </div>
            <ul data-role="listview" data-inset="true">                
                <li class="ui-field-contain">
                    <stripes:label name="label.User.name" for="userName" />
                    <input name="user.name" id="userName" type="text"
                           placeholder="${actionBean.getLocalizationKey("label.UserName.enter")}"
                           data-clear-btn="true">
                </li>
                <li class="ui-field-contain">
                    <stripes:label name="label.User.password" for="userPassword" />
                    <input name="user.password" id="userPassword" type="password"
                           placeholder="${actionBean.getLocalizationKey("label.UserPassword.enter")}"
                           data-clear-btn="true">
                </li>
                <li class="ui-field-contain">
                    <stripes:label name="label.User.confirmPassword" for="userConfirmPassword" />
                    <input name="confirmPassword" id="userConfirmPassword" type="password"
                           placeholder="${actionBean.getLocalizationKey("label.UserPassword.confirm")}"
                           data-clear-btn="true">
                </li>
                <li class="ui-body ui-body-b">
                    <fieldset class="ui-grid-a">
                        <div class="ui-block-a">
                            <sdynattr:submit name="accept" data-theme="a"/>
                        </div>
                        <div class="ui-block-b">
                            <sdynattr:reset name="clear" data-theme="b"/>
                        </div>
                    </fieldset>
                </li>
            </ul>        
        </stripes:form>
    </stripes:layout-component>

    <stripes:layout-component name="footer">

    </stripes:layout-component>
</stripes:layout-render>
