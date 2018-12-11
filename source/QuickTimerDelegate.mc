using Toybox.Attention;
using Toybox.WatchUi;

class QuickTimerDelegate extends WatchUi.InputDelegate {

    function initialize() {
        InputDelegate.initialize();
    }

    function onTap(event) {
        quickTimer.reset();
        return true;
    }
}