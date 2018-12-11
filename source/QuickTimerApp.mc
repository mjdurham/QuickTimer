using Toybox.Attention;
using Toybox.Application;
using Toybox.WatchUi;

var quickTimer;

class QuickTimerApp extends Application.AppBase {

    function initialize() {
        AppBase.initialize();
        quickTimer = new QuickTimerTimer();
    }

    // onStart() is called on application start up
    function onStart(state) {
    }

    // onStop() is called when your application is exiting
    function onStop(state) {
    }

    // Return the initial view of your application here
    function getInitialView() {
        return [ new QuickTimerView(), new QuickTimerDelegate() ];
    }
}
