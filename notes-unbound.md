# Unbound upper limits as of 1.26.1

## EDNS buffer size
- comment: Flag Day 2020
- configuration:
    - `edns-buffer-size`
    - `max-udp-size`
- value        : `1232`

## CNAME restarts
- configuration: `max-query-restarts`
- value        : `11`

## Limit number of RRs in an NS RRSet
- configuration: `iter-scrub-ns`
- value        : `20`

## Limit CNAME/DNAME in upstream reply
- comment: clips off the remainder of the reply
- configuration: `iter-scrub-cname`
- value        : `11`

## Limit number of RRSIGs per RRset in upstream reply
- configuration: `iter-scrub-rrsig`
- value        : `8`

## Outgoing queries per resolution attempt
- comment: resets on query restarts
- configuration: `max-sent-count`
- value        : `32`

## Outgoing queries per resolution attempt
- comment: including query restarts
- configuration: `max-global-quota`
- value        : `200`

## Maximum number of NS resolution queries for a query and subqueries
- configuration: -
- value        : `64`

## Maximum number of NS resolution queries per delegation point
- comment: in response to the NXNS attack
- configuration: -
- value        : `16`

## Maximum number of NXDOMAIN replies for a query and subqueries
- comment: in response to the NXNS attack
- configuration: -
- value        : `5`

## Maximum number of RRSIG validation attempts for a query
- comment: in response to the ReTrap attack
- configuration: `val-validation-attempts`
- value        : `32`

## Maximum number of DNSKEY hash attempts for a query
- comment: in response to the ReTrap attack
- configuration: `val-hash-attempts`
- value        : `32`

## Maximum nubmer of matches for DNSKEY tag and algorithm
- comment: in response to the ReTrap attack
- configuration: -
- value        : `256`

## Maximum number of referral responses accepted
- comment: 128 single label domains is valid DNS
- configuration: -
- value        : `130`

## Maximum number of EDNS options to parse
- comment: in response to computational attacks
- configuration: -
- value        : `100`

## Maximum number of RRSIG validations per RRSet
- comment: in response to the KeyTrap attack
- configuration: -
- value        : `8`

## Maximum number of continuous failing NSEC3 hash calculations
- comment: in response to the NSEC3 vulnerability attack
- configuration: -
- value        : `8`

## Maximum accepted salt length for NSEC3
- comment: in response to computational attacks
- configuration: -
- value        : `64`

## Maximum allowed digest match failures per DS
- comment: in response to the KeyTrap attack
- configuration: -
- value        : `8`

## Maximum number of RRsets to validate for qtype ANY
- comment: in response to computational attacks
- configuration: -
- value        : `24`
