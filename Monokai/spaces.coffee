command: "sh ~/.config/ubersicht/refresh.sh"

refreshFrequency: 2000

render: (output) ->
        data = output.split ","
        spaces = ["mail", "slack", "www", "sys", "dev", "misc", "ext"]
        index = parseInt( data[4], 10 ) - 1
        spaces[index] = "[#{spaces[index]}]"
        rep = "<span class=\"desktop#{index + 1}Div\">"
        sub = "<span class=\"desktop#{index + 1}Div\" style=\"color: rgba(244,156,111,1)\">"
        """
        <div>
          <p class="\firstline"\>
            <span class=\"appleDiv\">
               
            </span>
            <span class=\"breaksDiv\">
              |
            </span>
            <span class=\"desktop1Div\">
             #{spaces[0]} 
            </span>
            <span class=\"desktop2Div\">
             #{spaces[1]} 
            </span>
            <span class=\"desktop3Div\">
             #{spaces[2]} 
            </span>
            <span class=\"desktop4Div\">
             #{spaces[3]} 
            </span>
            <span class=\"desktop5Div\">
             #{spaces[4]} 
            </span>
            <span class=\"desktop6Div\">
             #{spaces[5]} 
            </span>
            <span class=\"desktop7Div\">
             #{spaces[6]} 
            </span>
            <span class=\"breaksDiv\">
              | 
            </span>
            <span class=\"solidDiv\">
             #{data[0]}
            </span>
            <span class=\"calendarIcon\">
             
            </span>
            <span class=\"date\">
            #{data[2]}
            </span>
            <span class=\"break1\">
            |
            </span>
            <span class=\"timeIcon\">
              
            </span>
            <span class=\"time\">
             #{data[3]}
            </span>
            <span class=\"break2\">
            |
            </span>
            <span class=\"batteryIcon\">
              
            </span>
            <span class=\"batteryPercent\">
             #{data[1]}
            </span>
          </p>
        </div>
        """.replace rep, sub

style: """
  
  .break2 {
    color: rgba(253,249,244,1);
    font-family: SFCompact-Regular;
    font-size: 18px;
    position: absolute;
    top: 4px;
    right: 67px;
  }
  
  .break1 {
    color: rgba(253,249,244,1);
    font-family: SFCompact-Regular;
    font-size: 18px;
    position: absolute;
    top: 4px;
    right: 143px;
  }
  
  .calendarIcon {
    color: rgba(243,110,136,1);
    font-family: FontAwesome5Free-Regular;
    font-size:16px;
    position: absolute;
    top: 8px;
    right: 235px;
  }
  
  .date {
    color: rgba(253,249,244,1);
    font-family: SFCompact-Regular;
    font-size:15px;
    position: absolute;
    top: 8px;
    right: 155px;
  }
  
  .timeIcon {
    color: rgba(178,217,130,1);
    font-family: FontAwesome5Free-Regular;
    font-size:16px;
    position: absolute;
    top: 8px;
    right: 120px;
  }

  .time {
    color: rgba(253,249,244,1);
    font-family: SFCompact-Regular;
    font-size:15px;
    position: absolute;
    top: 8px;
    right: 78px;
  }

  .batteryIcon {
    color: rgba(252,216,119,1);
    font-family: FontAwesome5Free-Solid;
    font-size:16px;
    position: absolute;
    top: 8px;
    right: 50px;
  }
  
  .batteryPercent {
    color: rgba(253,249,244,1);
    font-family: SFCompact-Regular;
    font-size:15px;
    position: absolute;
    top: 8px;
    right: 10px;
  }

  .firstline {
    line-height: 0px;
  }

  .appleDiv {
    color: rgba(253,249,244,1);
    font-family: SFCompact-Medium;
    font-size: 20px;
    padding-left: 12px;
  }
  
  .breaksDiv {
    color: rgba(253,249,244,1);
    font-family: SFCompact-Regular;
    font-size: 18px;
    padding-left: 5px;
  }
  
  .desktop1Div {
    color: rgba(253,249,244,1);
    font-family: SFCompact-Regular;
    font-size: 15px;
    padding-left: 8px;
  }
  
  .desktop2Div {
    color: rgba(253,249,244,1);
    font-family: SFCompact-Regular;
    font-size: 15px;
    padding-left: 12px;
  }
  
  .desktop3Div {
    color: rgba(253,249,244,1);
    font-family: SFCompact-Regular;
    font-size: 15px;
    padding-left: 12px;
  }
  
  .desktop4Div {
    color: rgba(253,249,244,1);
    font-family: SFCompact-Regular;
    font-size: 15px;
    padding-left: 12px;
  }
  
  .desktop5Div {
    color: rgba(253,249,244,1);
    font-family: SFCompact-Regular;
    font-size: 15px;
    padding-left: 12px;
  }
  
  .desktop6Div {
    color: rgba(253,249,244,1);
    font-family: SFCompact-Regular;
    font-size: 15px;
    padding-left: 12px;
  }
  
  .desktop7Div {
    color: rgba(253,249,244,1);
    font-family: SFCompact-Regular;
    font-size: 15px;
    padding-left: 12px;
  }

  .desktopDiv {
    color: rgba(253,249,244,1);
    font-family: SFCompact-Regular;
    font-size: 15px;
    padding-left: 12px;
  }

  .solidDiv {
    color: rgba(136,218,230,1);
    font-family: SFCompact-Regular;
    font-size: 15px;
    padding-left: 5px;
  }

  color: black
  position: absolute
  background-color: rgba(44, 41, 45, 1);
  display: flex;
  align-items: center;
  justify-content: left;
  width: 60%;
  top: 5px;
  left: 20%;
  height: 30px;
  z-index: -1;
  border-radius: 20px;
"""

