package
{
    import flash.external.ExternalInterface;

    public class Console
    {
        private static function escapeExternalInterfaceCall(raw_string:String):String
        {
            var escaped_chars:Array = new Array();

            for (var i:uint = 0; i !== raw_string.length; ++i)
            {
                var raw_char:String = raw_string.charAt(i);

                switch (raw_char)
                {
                    case "\\":
                        escaped_chars.push("\\");
                    default:
                        escaped_chars.push(raw_char);
                        break;
                }
            }

            return escaped_chars.join("");
        }

        private static function formatInt(number:uint, digits:uint):String
        {
            var number_as_string:String = String(number);
            var out_string_buffer:Array = [];

            for (var i:uint = number_as_string.length; i<digits; ++i)
                out_string_buffer.push('0');
            out_string_buffer.push(number_as_string);

            return out_string_buffer.join("");
        }

        private static function callConsole(level:String, msg:String):void
        {
            var now:Date = new Date();

            var timestamp:String = formatInt(now.fullYearUTC, 4) + "/" +
                formatInt(now.monthUTC + 1, 2) + "/" +
                formatInt(now.dateUTC, 2) + " " +
                formatInt(now.hoursUTC, 2) + ":" +
                formatInt(now.minutesUTC, 2) + ":" +
                formatInt(now.secondsUTC, 2) + "." +
                formatInt(now.millisecondsUTC, 3);

            msg = "Flash VPAID Player Tester: " + timestamp + " " + msg;
            ExternalInterface.call("console." + level, Console.escapeExternalInterfaceCall(msg));
        }

        public static function log(msg:String):void
        {
            callConsole("log", msg)
        }

        public static function error(msg:String):void
        {
            callConsole("error", msg)
        }

        public static function warning(msg:String):void
        {
            callConsole("warn", msg)
        }
    }
}