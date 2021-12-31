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