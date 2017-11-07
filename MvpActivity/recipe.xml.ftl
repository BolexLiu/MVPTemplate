<?xml version="1.0"?>
<recipe>
    <merge from="root/src/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
<#if generateLayout>
    <instantiate from="root/src/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${simpleLayoutName}.xml" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>
    <instantiate from="root/src/app_package/activity/MVPActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/activity/${activityClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <instantiate from="root/src/app_package/iview/MVPIView.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/iview/${MvpName}IView.java" />
    <instantiate from="root/src/app_package/presenter/MVPPresenter.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/presenter/${MvpName}Presenter.java" />
</recipe>
