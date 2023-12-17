UPDATE Timepair
SET start_pair = start_pair+INTERVAL '30' MINUTE,
    end_pair = end_pair+INTERVAL '30' MINUTE;
//Another One

UPDATE Timepair
SET start_pair = TIMESTAMPADD(MINUTE, 30, start_pair),
    end_pair = TIMESTAMPADD(Minute, 30, end_pair)
