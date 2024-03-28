channelID = 2488605;
readAPIKey = 'CNX44S96CCRHD1SU';


currentTime = datetime('now', 'TimeZone', 'UTC');
fiveHoursAgo = currentTime - hours(5);


url = sprintf('https://api.thingspeak.com/channels/%d/feeds.json?api_key=%s&start=%s&end=%s', ...
              channelID, readAPIKey, datestr(fiveHoursAgo, 'yyyy-mm-ddTHH:MM:SSZ'), ...
              datestr(currentTime, 'yyyy-mm-ddTHH:MM:SSZ'));


data = webread(url);


if ~isempty(data.feeds)
    sensorData = [data.feeds.field1]; 
    timestamps = datetime({data.feeds.created_at}, 'InputFormat', 'yyyy-MM-dd''T''HH:mm:ss''Z''', 'TimeZone', 'UTC');
    
    
    disp('Sensor Data:');
    disp(sensorData);
    disp('Timestamps:');
    disp(timestamps);
else
    disp('No data found in the specified time range.');
end