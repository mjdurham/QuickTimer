using Toybox.Attention;
using Toybox.Lang;
using Toybox.Timer;
using Toybox.WatchUi;

class QuickTimerTimer {
    var count;
    var timer;

    function initialize() {
        count = 30;
        timer = new Timer.Timer();
        timer.start(method(:tick), 1000, true);
    }

    function tick() {
        count--;

        if (count == 0) {
            vibrate();
        }

        WatchUi.requestUpdate();
    }

    function reset() {
        if (count < 0) {
            count = 0;
        }

        count += 30;
    }

    function getFormatedCount() {
        var hours = count / 60;
        var secs = count % 60;
        return Lang.format("$1$:$2$", [hours.format("%02d"), secs.format("%02d")]);
    }

    function vibrate() {
        if (Attention has :vibrate) {
            var vibrateData = [
                new Attention.VibeProfile( 100, 500 ),
                new Attention.VibeProfile( 0, 500 ),
                new Attention.VibeProfile( 100, 500 ),
                new Attention.VibeProfile( 0, 500 ),
                new Attention.VibeProfile( 100, 500)
            ];
            Attention.vibrate( vibrateData );
        }
    }
}
