DO $$
DECLARE
    num INTEGER := -5;
BEGIN
    IF num > 0 THEN
        RAISE NOTICE 'Number is Positive';
    ELSE
        RAISE NOTICE 'Number is Non-Positive';
    END IF;
END;
$$ LANGUAGE plpgsql;

DO $$
DECLARE
    marks INTEGER := 85;
BEGIN
    IF marks >= 90 THEN
        RAISE NOTICE 'Grade: A+';
    ELSIF marks >= 80 THEN
        RAISE NOTICE 'Grade: A';
    ELSIF marks >= 70 THEN
        RAISE NOTICE 'Grade: B';
    ELSIF marks >= 60 THEN
        RAISE NOTICE 'Grade: C';
    ELSE
        RAISE NOTICE 'Grade: Fail';
    END IF;
END;
$$ LANGUAGE plpgsql;

DO $$
DECLARE
    marks INTEGER := 72;
BEGIN
    IF marks >= 90 THEN
        RAISE NOTICE 'Performance: Excellent';
    ELSIF marks >= 75 THEN
        RAISE NOTICE 'Performance: Very Good';
    ELSIF marks >= 60 THEN
        RAISE NOTICE 'Performance: Good';
    ELSIF marks >= 50 THEN
        RAISE NOTICE 'Performance: Average';
    ELSE
        RAISE NOTICE 'Performance: Poor';
    END IF;
END;
$$ LANGUAGE plpgsql;


DO $$
DECLARE
    day_no INTEGER := 3;
    day_name VARCHAR(20);
BEGIN
    day_name := CASE day_no
        WHEN 1 THEN 'Monday'
        WHEN 2 THEN 'Tuesday'
        WHEN 3 THEN 'Wednesday'
        WHEN 4 THEN 'Thursday'
        WHEN 5 THEN 'Friday'
        WHEN 6 THEN 'Saturday'
        WHEN 7 THEN 'Sunday'
        ELSE 'Invalid Day'
    END;

    RAISE NOTICE 'Day is: %', day_name;
END;
$$ LANGUAGE plpgsql;


