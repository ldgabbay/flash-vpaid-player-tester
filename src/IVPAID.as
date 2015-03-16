package
{
    /**
     * This defines the interface to VPAID 1.0, document version 1.1, defined at
     * http://www.iab.net/media/file/VPAIDFINAL51109.pdf
     */
    public interface IVPAID
    {
        function handshakeVersion(playerVPAIDVersion:String):String;
        function initAd(width:Number, height:Number, viewMode:String, desiredBitrate:Number, creativeData:String, environmentVars:String):void;
        function resizeAd(width:Number, height:Number, viewMode:String):void;
        function startAd():void;
        function stopAd():void;
        function pauseAd():void;
        function resumeAd():void;
        function expandAd():void;
        function collapseAd():void;

        function get adLinear():Boolean;
        function get adExpanded():Boolean;
        function get adRemainingTime():Number;
        function get adVolume():Number;
        function set adVolume(value:Number):void;
    }
}
