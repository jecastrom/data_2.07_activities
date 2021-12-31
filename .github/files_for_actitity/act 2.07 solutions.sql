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