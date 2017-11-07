package ${packageName}.activity;

import baselib.base.BaseKitActivity;
import android.os.Bundle;
import ${packageName}.iview.${MvpName}IView;
import ${packageName}.presenter.${MvpName}Presenter;

<#if applicationPackage?? && generateLayout>
import ${applicationPackage}.R;
</#if>

/**
 *
 *  ${actDescription}
 * * Created by Bolex on 2017/11/8.
 *
 */
public class ${activityClass} extends BaseKitActivity<${MvpName}Presenter>implements ${MvpName}IView {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
<#if generateLayout>
        setContentView(R.layout.${layoutName});
</#if>

    }

    @Override
    protected ${MvpName}Presenter getPresenter() {
        return new ${MvpName}Presenter(${activityClass}.this,${activityClass}.this);
    }

}
