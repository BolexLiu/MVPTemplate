package ${packageName}.presenter;

import android.content.Context;
import ${packageName}.iview.${MvpName}IView;
import baselib.presenter.BasePresenter;

/**
 *
 *  ${actDescription}
 * * Created by Bolex on 2017/11/8.
 *
 */
public class ${MvpName}Presenter extends BasePresenter<${MvpName}IView> {


    public ${MvpName}Presenter(Context context, ${MvpName}IView mIView) {
        super(context, mIView);
    }

    @Override
    public Throwable doError(Throwable e) {
        return null;
    }

}
