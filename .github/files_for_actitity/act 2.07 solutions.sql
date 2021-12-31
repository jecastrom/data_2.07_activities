/*
 ** Find out how many cards of each type have been issued.
 */
SELECT
    count(*) AS nunber_of_cards_issued,
    `type`
FROM
    card
GROUP BY
    `type`;
/*
 Find out how many customers there are by the district.
 */
SELECT
    count(*) AS number_of_clients,
    district.a2 AS district_name
FROM
    `client`
    INNER JOIN district ON `client`.district_id = district.A1
GROUP BY
    2
ORDER BY
    1 DESC;
/*
 Find out average transaction value by type.
 */
SELECT
    floor(avg(amount)) AS average_transact_amount,
    `type`
FROM
    trans
GROUP BY
    2;
/*
 As you might have seen in the previous query, there are 19 
 rows returned by this query. But there a few places where the 
 column ``k_symbol`` is an empty string. Your task it to use a filter 
 to remove those rows of data. After the filter gets applied, you would 
 see that the number of rows have reduced.
 */
SELECT
    k_symbol,
    floor(avg(amount)) AS average_transact_amount
FROM
    trans
WHERE
    k_symbol != ' '
GROUP BY
    1;