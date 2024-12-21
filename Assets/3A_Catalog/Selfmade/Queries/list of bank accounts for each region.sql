
Select a.accountno, c.iso_code From (
SELECT
    *
FROM
    c_bankaccount
WHERE
    ( c_bankaccount.ad_org_id = 1000102 )
    AND ( ( ( 1000009 = 1000008
              OR 1000009 = 1000009 )
            AND ( 'NTA Payment - AP' = 'NTA Payment - AP'
                  OR 'NTA Payment - AP' = 'NTA Receipt'
                  OR 'NTA Payment - AP' = 'Payment Out AR'
                  OR 'NTA Payment - AP' = 'Payment - AP'
                  OR 'NTA Payment - AP' = 'Payment' )
            AND c_bankaccount.isactive = 'Y'
            AND c_bankaccount.bankaccounttype = 'C' )
          OR ( ( 1000009 = 1000381 )
               AND ( 'NTA Payment - AP' = 'NTA Payment - AP'
                     OR 'NTA Payment - AP' = 'Payment Out AR'
                     OR 'NTA Payment - AP' = 'Payment - AP' )
               AND c_bankaccount.isactive = 'Y'
               AND c_bankaccount.bankaccounttype = 'A' )
          OR ( ( 1000009 = 1000380 )
               AND ( 'NTA Payment - AP' = 'NTA Receipt'
                     OR 'NTA Payment - AP' = 'NTA Payment - AP'
                     OR 'NTA Payment - AP' = 'Super Cash Payment' )
               AND c_bankaccount.isactive = 'Y'
               AND c_bankaccount.bankaccounttype = 'A' )
          OR ( ( 1000009 = 1000380 )
               AND ( 'NTA Payment - AP' = 'Cash Payment' )
               AND c_bankaccount.accountno = 'TIEN MAT-TRADE'
               AND c_bankaccount.isactive = 'Y'
               AND c_bankaccount.bankaccounttype = 'A' )
          OR ( ( 1000009 = 1000594
                 OR 1000009 = 1000595
                 OR 1000009 = 1000694
                 OR 1000009 = 1000695 )
               AND ( 'NTA Payment - AP' = 'NTA Payment - AP'
                     OR 'NTA Payment - AP' = 'NTA Receipt'
                     OR 'NTA Payment - AP' = 'Payment'
                     OR 'NTA Payment - AP' = 'Payment - AP' )
               AND c_bankaccount.isactive = 'Y'
               AND c_bankaccount.bankaccounttype = 'N' )
          OR ( 1000009 = 1000382
               AND 'NTA Payment - AP' = 'Payment - AP'
               AND c_bankaccount.isactive = 'Y'
               AND c_bankaccount.bankaccounttype = 'L' )
          OR ( ( 1000009 = 1000369
                 OR 1000009 = 1000377 )
               AND 'NTA Payment - AP' = 'Payment - AP'
               AND c_bankaccount.isactive = 'Y'
               AND ( c_bankaccount.bankaccounttype = 'S'
                     OR c_bankaccount.bankaccounttype = 'C'
                     OR c_bankaccount.bankaccounttype = 'A' ) )
          OR ( 1000009 = 1001337
               AND c_bankaccount.isactive = 'Y'
               AND c_bankaccount.bankaccounttype = 'N' )
          OR ( ( 1000009 = 1000902
                 OR 1000009 = 1000904
                 OR 1000009 = 1000903 )
               AND 'NTA Payment - AP' = 'Treasury Receipt'
               AND c_bankaccount.isactive = 'Y'
               AND ( c_bankaccount.bankaccounttype = 'C'
                     OR c_bankaccount.bankaccounttype = 'A' ) ) )) a
                     Inner Join C_Bank b On b.C_Bank_ID=a.C_Bank_ID
                     Inner Join C_Currency c On a.C_Currency_ID=c.C_Currency_ID;


select * from c_bankaccount;
select* from c_currency;
