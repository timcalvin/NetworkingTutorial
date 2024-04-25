//
//  TestData.swift
//  NetworkingTutorialTests
//
//  Created by Timothy Bryant on 4/24/24.
//

import Foundation

// 20 coins
let mockCoinData_marketCapDesc: Data = """
[
  {
    "id": "bitcoin",
    "symbol": "btc",
    "name": "Bitcoin",
    "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
    "current_price": 64134,
    "market_cap": 1261379274645,
    "market_cap_rank": 1,
    "fully_diluted_valuation": 1345319183866,
    "total_volume": 27502576413,
    "high_24h": 67058,
    "low_24h": 63571,
    "price_change_24h": -2239.496837678358,
    "price_change_percentage_24h": -3.37409,
    "market_cap_change_24h": -44107720768.02075,
    "market_cap_change_percentage_24h": -3.37864,
    "circulating_supply": 19689725,
    "total_supply": 21000000,
    "max_supply": 21000000,
    "ath": 73738,
    "ath_change_percentage": -13.12095,
    "ath_date": "2024-03-14T07:10:36.635Z",
    "atl": 67.81,
    "atl_change_percentage": 94375.39158,
    "atl_date": "2013-07-06T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-04-24T21:08:40.775Z",
    "price_change_percentage_24h_in_currency": -3.3740944963756743
  },
  {
    "id": "ethereum",
    "symbol": "eth",
    "name": "Ethereum",
    "image": "https://assets.coingecko.com/coins/images/279/large/ethereum.png?1696501628",
    "current_price": 3133.28,
    "market_cap": 381923743401,
    "market_cap_rank": 2,
    "fully_diluted_valuation": 381923743401,
    "total_volume": 14465798353,
    "high_24h": 3289.86,
    "low_24h": 3115.25,
    "price_change_24h": -72.65208343237828,
    "price_change_percentage_24h": -2.26618,
    "market_cap_change_24h": -9509413483.35608,
    "market_cap_change_percentage_24h": -2.42938,
    "circulating_supply": 122047160.173248,
    "total_supply": 122047160.173248,
    "max_supply": null,
    "ath": 4878.26,
    "ath_change_percentage": -35.84452,
    "ath_date": "2021-11-10T14:24:19.604Z",
    "atl": 0.432979,
    "atl_change_percentage": 722723.12897,
    "atl_date": "2015-10-20T00:00:00.000Z",
    "roi": {
      "times": 64.34690956338092,
      "currency": "btc",
      "percentage": 6434.690956338091
    },
    "last_updated": "2024-04-24T21:08:38.817Z",
    "price_change_percentage_24h_in_currency": -2.2661782934892796
  },
  {
    "id": "tether",
    "symbol": "usdt",
    "name": "Tether",
    "image": "https://assets.coingecko.com/coins/images/325/large/Tether.png?1696501661",
    "current_price": 0.998681,
    "market_cap": 110357296927,
    "market_cap_rank": 3,
    "fully_diluted_valuation": 110357296927,
    "total_volume": 51518521043,
    "high_24h": 1.002,
    "low_24h": 0.995361,
    "price_change_24h": -0.001323808158999129,
    "price_change_percentage_24h": -0.13238,
    "market_cap_change_24h": -63395640.39138794,
    "market_cap_change_percentage_24h": -0.05741,
    "circulating_supply": 110463515619.005,
    "total_supply": 110463515619.005,
    "max_supply": null,
    "ath": 1.32,
    "ath_change_percentage": -24.49233,
    "ath_date": "2018-07-24T00:00:00.000Z",
    "atl": 0.572521,
    "atl_change_percentage": 74.49813,
    "atl_date": "2015-03-02T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-04-24T21:05:45.108Z",
    "price_change_percentage_24h_in_currency": -0.13238022993341797
  },
  {
    "id": "binancecoin",
    "symbol": "bnb",
    "name": "BNB",
    "image": "https://assets.coingecko.com/coins/images/825/large/bnb-icon2_2x.png?1696501970",
    "current_price": 607.35,
    "market_cap": 93660307136,
    "market_cap_rank": 4,
    "fully_diluted_valuation": 93660307136,
    "total_volume": 1984129380,
    "high_24h": 617.25,
    "low_24h": 593.12,
    "price_change_24h": -0.9648058132326014,
    "price_change_percentage_24h": -0.1586,
    "market_cap_change_24h": 13476674,
    "market_cap_change_percentage_24h": 0.01439,
    "circulating_supply": 153856150,
    "total_supply": 153856150,
    "max_supply": 200000000,
    "ath": 686.31,
    "ath_change_percentage": -11.30022,
    "ath_date": "2021-05-10T07:24:17.097Z",
    "atl": 0.0398177,
    "atl_change_percentage": 1528748.94328,
    "atl_date": "2017-10-19T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-04-24T21:08:45.215Z",
    "price_change_percentage_24h_in_currency": -0.15860216426070128
  },
  {
    "id": "solana",
    "symbol": "sol",
    "name": "Solana",
    "image": "https://assets.coingecko.com/coins/images/4128/large/solana.png?1696504756",
    "current_price": 148.92,
    "market_cap": 66597002588,
    "market_cap_rank": 5,
    "fully_diluted_valuation": 85599428722,
    "total_volume": 4219261115,
    "high_24h": 159.59,
    "low_24h": 148.36,
    "price_change_24h": -7.717505778435509,
    "price_change_percentage_24h": -4.92712,
    "market_cap_change_24h": -3329245182.7122498,
    "market_cap_change_percentage_24h": -4.76108,
    "circulating_supply": 447042332.351633,
    "total_supply": 574598957.559025,
    "max_supply": null,
    "ath": 259.96,
    "ath_change_percentage": -42.71569,
    "ath_date": "2021-11-06T21:54:35.825Z",
    "atl": 0.500801,
    "atl_change_percentage": 29635.52501,
    "atl_date": "2020-05-11T19:35:23.449Z",
    "roi": null,
    "last_updated": "2024-04-24T21:08:23.086Z",
    "price_change_percentage_24h_in_currency": -4.927122138955619
  },
  {
    "id": "usd-coin",
    "symbol": "usdc",
    "name": "USDC",
    "image": "https://assets.coingecko.com/coins/images/6319/large/usdc.png?1696506694",
    "current_price": 1.001,
    "market_cap": 33359724556,
    "market_cap_rank": 6,
    "fully_diluted_valuation": 33466336160,
    "total_volume": 7118146335,
    "high_24h": 1.003,
    "low_24h": 0.9924,
    "price_change_24h": 0.00093068,
    "price_change_percentage_24h": 0.09308,
    "market_cap_change_24h": -378774224.3492317,
    "market_cap_change_percentage_24h": -1.12268,
    "circulating_supply": 33365352148.4098,
    "total_supply": 33471981737.615,
    "max_supply": null,
    "ath": 1.17,
    "ath_change_percentage": -14.74152,
    "ath_date": "2019-05-08T00:40:28.300Z",
    "atl": 0.877647,
    "atl_change_percentage": 13.92186,
    "atl_date": "2023-03-11T08:02:13.981Z",
    "roi": null,
    "last_updated": "2024-04-24T21:08:13.845Z",
    "price_change_percentage_24h_in_currency": 0.09308033338817795
  },
  {
    "id": "ripple",
    "symbol": "xrp",
    "name": "XRP",
    "image": "https://assets.coingecko.com/coins/images/44/large/xrp-symbol-white-128.png?1696501442",
    "current_price": 0.53155,
    "market_cap": 29309167160,
    "market_cap_rank": 7,
    "fully_diluted_valuation": 53158007756,
    "total_volume": 1419404852,
    "high_24h": 0.553636,
    "low_24h": 0.525321,
    "price_change_24h": -0.02199373818671546,
    "price_change_percentage_24h": -3.97326,
    "market_cap_change_24h": -1189147243.348526,
    "market_cap_change_percentage_24h": -3.89906,
    "circulating_supply": 55129144019,
    "total_supply": 99987674482,
    "max_supply": 100000000000,
    "ath": 3.4,
    "ath_change_percentage": -84.35623,
    "ath_date": "2018-01-07T00:00:00.000Z",
    "atl": 0.00268621,
    "atl_change_percentage": 19691.68666,
    "atl_date": "2014-05-22T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-04-24T21:08:41.717Z",
    "price_change_percentage_24h_in_currency": -3.9732627837540933
  },
  {
    "id": "staked-ether",
    "symbol": "steth",
    "name": "Lido Staked Ether",
    "image": "https://assets.coingecko.com/coins/images/13442/large/steth_logo.png?1696513206",
    "current_price": 3131.56,
    "market_cap": 29207581411,
    "market_cap_rank": 8,
    "fully_diluted_valuation": 29207783421,
    "total_volume": 98687837,
    "high_24h": 3288.59,
    "low_24h": 3113.6,
    "price_change_24h": -72.3945171799055,
    "price_change_percentage_24h": -2.25954,
    "market_cap_change_24h": -690098833.5608444,
    "market_cap_change_percentage_24h": -2.3082,
    "circulating_supply": 9339346.06615624,
    "total_supply": 9339410.66027186,
    "max_supply": null,
    "ath": 4829.57,
    "ath_change_percentage": -35.1888,
    "ath_date": "2021-11-10T14:40:47.256Z",
    "atl": 482.9,
    "atl_change_percentage": 548.19371,
    "atl_date": "2020-12-22T04:08:21.854Z",
    "roi": null,
    "last_updated": "2024-04-24T21:08:40.278Z",
    "price_change_percentage_24h_in_currency": -2.259539582397681
  },
  {
    "id": "dogecoin",
    "symbol": "doge",
    "name": "Dogecoin",
    "image": "https://assets.coingecko.com/coins/images/5/large/dogecoin.png?1696501409",
    "current_price": 0.152509,
    "market_cap": 21989790372,
    "market_cap_rank": 9,
    "fully_diluted_valuation": 21998846723,
    "total_volume": 1491495020,
    "high_24h": 0.163683,
    "low_24h": 0.151355,
    "price_change_24h": -0.008115188271438785,
    "price_change_percentage_24h": -5.05228,
    "market_cap_change_24h": -1147301646.20335,
    "market_cap_change_percentage_24h": -4.95871,
    "circulating_supply": 143962476383.705,
    "total_supply": 144021766383.705,
    "max_supply": null,
    "ath": 0.731578,
    "ath_change_percentage": -79.12093,
    "ath_date": "2021-05-08T05:08:23.458Z",
    "atl": 0.0000869,
    "atl_change_percentage": 175665.33537,
    "atl_date": "2015-05-06T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-04-24T21:08:45.085Z",
    "price_change_percentage_24h_in_currency": -5.052280419150501
  },
  {
    "id": "the-open-network",
    "symbol": "ton",
    "name": "Toncoin",
    "image": "https://assets.coingecko.com/coins/images/17980/large/ton_symbol.png?1696517498",
    "current_price": 5.59,
    "market_cap": 19327540508,
    "market_cap_rank": 10,
    "fully_diluted_valuation": 28420178256,
    "total_volume": 287096000,
    "high_24h": 5.95,
    "low_24h": 5.47,
    "price_change_24h": -0.057163291908644887,
    "price_change_percentage_24h": -1.01145,
    "market_cap_change_24h": -337259661.63027954,
    "market_cap_change_percentage_24h": -1.71504,
    "circulating_supply": 3472190824.5938,
    "total_supply": 5105682336.08891,
    "max_supply": null,
    "ath": 7.63,
    "ath_change_percentage": -26.96753,
    "ath_date": "2024-04-11T05:55:53.682Z",
    "atl": 0.519364,
    "atl_change_percentage": 973.51704,
    "atl_date": "2021-09-21T00:33:11.092Z",
    "roi": null,
    "last_updated": "2024-04-24T21:08:42.035Z",
    "price_change_percentage_24h_in_currency": -1.0114454274259281
  },
  {
    "id": "cardano",
    "symbol": "ada",
    "name": "Cardano",
    "image": "https://assets.coingecko.com/coins/images/975/large/cardano.png?1696502090",
    "current_price": 0.476612,
    "market_cap": 16853377980,
    "market_cap_rank": 11,
    "fully_diluted_valuation": 21477849544,
    "total_volume": 481773072,
    "high_24h": 0.50941,
    "low_24h": 0.473013,
    "price_change_24h": -0.026676799629915093,
    "price_change_percentage_24h": -5.3005,
    "market_cap_change_24h": -947849192.9227486,
    "market_cap_change_percentage_24h": -5.32463,
    "circulating_supply": 35310891231.2789,
    "total_supply": 45000000000,
    "max_supply": 45000000000,
    "ath": 3.09,
    "ath_change_percentage": -84.53361,
    "ath_date": "2021-09-02T06:00:10.474Z",
    "atl": 0.01925275,
    "atl_change_percentage": 2379.82052,
    "atl_date": "2020-03-13T02:22:55.044Z",
    "roi": null,
    "last_updated": "2024-04-24T21:08:24.231Z",
    "price_change_percentage_24h_in_currency": -5.300499991112737
  },
  {
    "id": "shiba-inu",
    "symbol": "shib",
    "name": "Shiba Inu",
    "image": "https://assets.coingecko.com/coins/images/11939/large/shiba.png?1696511800",
    "current_price": 0.00002583,
    "market_cap": 15248891983,
    "market_cap_rank": 12,
    "fully_diluted_valuation": 25877431442,
    "total_volume": 771602498,
    "high_24h": 0.00002745,
    "low_24h": 0.00002562,
    "price_change_24h": -0.000001130216002916,
    "price_change_percentage_24h": -4.19208,
    "market_cap_change_24h": -678022545.324686,
    "market_cap_change_percentage_24h": -4.25709,
    "circulating_supply": 589263391491760.5,
    "total_supply": 999982361425856,
    "max_supply": null,
    "ath": 0.00008616,
    "ath_change_percentage": -69.99938,
    "ath_date": "2021-10-28T03:54:55.568Z",
    "atl": 5.6366e-11,
    "atl_change_percentage": 45857318.10033,
    "atl_date": "2020-11-28T11:26:25.838Z",
    "roi": null,
    "last_updated": "2024-04-24T21:08:25.321Z",
    "price_change_percentage_24h_in_currency": -4.192077643354705
  },
  {
    "id": "avalanche-2",
    "symbol": "avax",
    "name": "Avalanche",
    "image": "https://assets.coingecko.com/coins/images/12559/large/Avalanche_Circle_RedWhite_Trans.png?1696512369",
    "current_price": 36.73,
    "market_cap": 13894646934,
    "market_cap_rank": 13,
    "fully_diluted_valuation": 16051830928,
    "total_volume": 506871281,
    "high_24h": 39.73,
    "low_24h": 36.7,
    "price_change_24h": -1.7321871381521419,
    "price_change_percentage_24h": -4.50388,
    "market_cap_change_24h": -670160128.9058228,
    "market_cap_change_percentage_24h": -4.60123,
    "circulating_supply": 378026088.037103,
    "total_supply": 436715728.037103,
    "max_supply": 720000000,
    "ath": 144.96,
    "ath_change_percentage": -74.67309,
    "ath_date": "2021-11-21T14:18:56.538Z",
    "atl": 2.8,
    "atl_change_percentage": 1210.72315,
    "atl_date": "2020-12-31T13:15:21.540Z",
    "roi": null,
    "last_updated": "2024-04-24T21:08:40.255Z",
    "price_change_percentage_24h_in_currency": -4.503879687792392
  },
  {
    "id": "tron",
    "symbol": "trx",
    "name": "TRON",
    "image": "https://assets.coingecko.com/coins/images/1094/large/tron-logo.png?1696502193",
    "current_price": 0.113673,
    "market_cap": 9950969377,
    "market_cap_rank": 14,
    "fully_diluted_valuation": 9950966299,
    "total_volume": 364398390,
    "high_24h": 0.114071,
    "low_24h": 0.112537,
    "price_change_24h": 0.000056,
    "price_change_percentage_24h": 0.04929,
    "market_cap_change_24h": 1760303,
    "market_cap_change_percentage_24h": 0.01769,
    "circulating_supply": 87574994872.0004,
    "total_supply": 87574967787.4238,
    "max_supply": null,
    "ath": 0.231673,
    "ath_change_percentage": -50.95324,
    "ath_date": "2018-01-05T00:00:00.000Z",
    "atl": 0.00180434,
    "atl_change_percentage": 6197.47568,
    "atl_date": "2017-11-12T00:00:00.000Z",
    "roi": {
      "times": 58.82807499235763,
      "currency": "usd",
      "percentage": 5882.807499235763
    },
    "last_updated": "2024-04-24T21:08:43.702Z",
    "price_change_percentage_24h_in_currency": 0.049288117123644205
  },
  {
    "id": "wrapped-bitcoin",
    "symbol": "wbtc",
    "name": "Wrapped Bitcoin",
    "image": "https://assets.coingecko.com/coins/images/7598/large/wrapped_bitcoin_wbtc.png?1696507857",
    "current_price": 64064,
    "market_cap": 9935306183,
    "market_cap_rank": 15,
    "fully_diluted_valuation": 9935306183,
    "total_volume": 203699645,
    "high_24h": 67093,
    "low_24h": 63756,
    "price_change_24h": -2287.4590634088017,
    "price_change_percentage_24h": -3.44751,
    "market_cap_change_24h": -360517376.00300217,
    "market_cap_change_percentage_24h": -3.50159,
    "circulating_supply": 155232.81826528,
    "total_supply": 155232.81826528,
    "max_supply": 155232.81826528,
    "ath": 73505,
    "ath_change_percentage": -12.92924,
    "ath_date": "2024-03-14T07:10:23.403Z",
    "atl": 3139.17,
    "atl_change_percentage": 1938.81049,
    "atl_date": "2019-04-02T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-04-24T21:08:38.990Z",
    "price_change_percentage_24h_in_currency": -3.4475115426523173
  },
  {
    "id": "bitcoin-cash",
    "symbol": "bch",
    "name": "Bitcoin Cash",
    "image": "https://assets.coingecko.com/coins/images/780/large/bitcoin-cash-circle.png?1696501932",
    "current_price": 480.39,
    "market_cap": 9493263279,
    "market_cap_rank": 16,
    "fully_diluted_valuation": 10121559110,
    "total_volume": 332844277,
    "high_24h": 511.34,
    "low_24h": 475.9,
    "price_change_24h": -26.94194638279521,
    "price_change_percentage_24h": -5.31053,
    "market_cap_change_24h": -521053144.1136112,
    "market_cap_change_percentage_24h": -5.20308,
    "circulating_supply": 19696424.8966508,
    "total_supply": 21000000,
    "max_supply": 21000000,
    "ath": 3785.82,
    "ath_change_percentage": -87.26686,
    "ath_date": "2017-12-20T00:00:00.000Z",
    "atl": 76.93,
    "atl_change_percentage": 526.57448,
    "atl_date": "2018-12-16T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-04-24T21:08:37.251Z",
    "price_change_percentage_24h_in_currency": -5.310533005411907
  },
  {
    "id": "polkadot",
    "symbol": "dot",
    "name": "Polkadot",
    "image": "https://assets.coingecko.com/coins/images/12171/large/polkadot.png?1696512008",
    "current_price": 6.98,
    "market_cap": 9480991978,
    "market_cap_rank": 17,
    "fully_diluted_valuation": 10046807135,
    "total_volume": 257903729,
    "high_24h": 7.49,
    "low_24h": 6.98,
    "price_change_24h": -0.33556876118287615,
    "price_change_percentage_24h": -4.58519,
    "market_cap_change_24h": -471242381.73467064,
    "market_cap_change_percentage_24h": -4.73504,
    "circulating_supply": 1356411314.16785,
    "total_supply": 1437360447.08187,
    "max_supply": null,
    "ath": 54.98,
    "ath_change_percentage": -87.29674,
    "ath_date": "2021-11-04T14:10:09.301Z",
    "atl": 2.7,
    "atl_change_percentage": 158.92439,
    "atl_date": "2020-08-20T05:48:11.359Z",
    "roi": null,
    "last_updated": "2024-04-24T21:08:27.881Z",
    "price_change_percentage_24h_in_currency": -4.585190381190986
  },
  {
    "id": "chainlink",
    "symbol": "link",
    "name": "Chainlink",
    "image": "https://assets.coingecko.com/coins/images/877/large/chainlink-new-logo.png?1696502009",
    "current_price": 14.59,
    "market_cap": 8584959354,
    "market_cap_rank": 18,
    "fully_diluted_valuation": 14622653336,
    "total_volume": 417940331,
    "high_24h": 15.62,
    "low_24h": 14.59,
    "price_change_24h": -0.7146674320894704,
    "price_change_percentage_24h": -4.66842,
    "market_cap_change_24h": -417820907.4865303,
    "market_cap_change_percentage_24h": -4.64102,
    "circulating_supply": 587099971.3083414,
    "total_supply": 1000000000,
    "max_supply": 1000000000,
    "ath": 52.7,
    "ath_change_percentage": -72.25113,
    "ath_date": "2021-05-10T00:13:57.214Z",
    "atl": 0.148183,
    "atl_change_percentage": 9767.99589,
    "atl_date": "2017-11-29T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-04-24T21:08:40.294Z",
    "price_change_percentage_24h_in_currency": -4.668419928522184
  },
  {
    "id": "near",
    "symbol": "near",
    "name": "NEAR Protocol",
    "image": "https://assets.coingecko.com/coins/images/10365/large/near.jpg?1696510367",
    "current_price": 6.97,
    "market_cap": 7436421690,
    "market_cap_rank": 19,
    "fully_diluted_valuation": 8258143125,
    "total_volume": 623645231,
    "high_24h": 7.29,
    "low_24h": 6.78,
    "price_change_24h": -0.01917628073161204,
    "price_change_percentage_24h": -0.27452,
    "market_cap_change_24h": -21960277.231399536,
    "market_cap_change_percentage_24h": -0.29444,
    "circulating_supply": 1065507990.62748,
    "total_supply": 1183246170.6779,
    "max_supply": null,
    "ath": 20.44,
    "ath_change_percentage": -66.00513,
    "ath_date": "2022-01-16T22:09:45.873Z",
    "atl": 0.526762,
    "atl_change_percentage": 1218.9839,
    "atl_date": "2020-11-04T16:09:15.137Z",
    "roi": null,
    "last_updated": "2024-04-24T21:08:45.837Z",
    "price_change_percentage_24h_in_currency": -0.27451993449512035
  },
  {
    "id": "matic-network",
    "symbol": "matic",
    "name": "Polygon",
    "image": "https://assets.coingecko.com/coins/images/4713/large/polygon.png?1698233745",
    "current_price": 0.710809,
    "market_cap": 6595070241,
    "market_cap_rank": 20,
    "fully_diluted_valuation": 7104503214,
    "total_volume": 369478407,
    "high_24h": 0.762199,
    "low_24h": 0.706629,
    "price_change_24h": -0.021498285457514088,
    "price_change_percentage_24h": -2.93569,
    "market_cap_change_24h": -220100123.43541527,
    "market_cap_change_percentage_24h": -3.22956,
    "circulating_supply": 9282943566.203985,
    "total_supply": 10000000000,
    "max_supply": 10000000000,
    "ath": 2.92,
    "ath_change_percentage": -75.63835,
    "ath_date": "2021-12-27T02:08:34.307Z",
    "atl": 0.00314376,
    "atl_change_percentage": 22498.72408,
    "atl_date": "2019-05-10T00:00:00.000Z",
    "roi": {
      "times": 269.2695435109516,
      "currency": "usd",
      "percentage": 26926.954351095163
    },
    "last_updated": "2024-04-24T21:08:40.831Z",
    "price_change_percentage_24h_in_currency": -2.9356922751897745
  }
]
""".data(using: .utf8)!

// Invalid name key in bitcoin
let mockCoins_invalidJSON = """
[
  {
    "id": "bitcoin",
    "symbol": "btc",
    "nam": "Bitcoin",
    "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
    "current_price": 64134,
    "market_cap": 1261379274645,
    "market_cap_rank": 1,
    "fully_diluted_valuation": 1345319183866,
    "total_volume": 27502576413,
    "high_24h": 67058,
    "low_24h": 63571,
    "price_change_24h": -2239.496837678358,
    "price_change_percentage_24h": -3.37409,
    "market_cap_change_24h": -44107720768.02075,
    "market_cap_change_percentage_24h": -3.37864,
    "circulating_supply": 19689725,
    "total_supply": 21000000,
    "max_supply": 21000000,
    "ath": 73738,
    "ath_change_percentage": -13.12095,
    "ath_date": "2024-03-14T07:10:36.635Z",
    "atl": 67.81,
    "atl_change_percentage": 94375.39158,
    "atl_date": "2013-07-06T00:00:00.000Z",
    "roi": null,
    "last_updated": "2024-04-24T21:08:40.775Z",
    "price_change_percentage_24h_in_currency": -3.3740944963756743
  },
  {
    "id": "ethereum",
    "symbol": "eth",
    "name": "Ethereum",
    "image": "https://assets.coingecko.com/coins/images/279/large/ethereum.png?1696501628",
    "current_price": 3133.28,
    "market_cap": 381923743401,
    "market_cap_rank": 2,
    "fully_diluted_valuation": 381923743401,
    "total_volume": 14465798353,
    "high_24h": 3289.86,
    "low_24h": 3115.25,
    "price_change_24h": -72.65208343237828,
    "price_change_percentage_24h": -2.26618,
    "market_cap_change_24h": -9509413483.35608,
    "market_cap_change_percentage_24h": -2.42938,
    "circulating_supply": 122047160.173248,
    "total_supply": 122047160.173248,
    "max_supply": null,
    "ath": 4878.26,
    "ath_change_percentage": -35.84452,
    "ath_date": "2021-11-10T14:24:19.604Z",
    "atl": 0.432979,
    "atl_change_percentage": 722723.12897,
    "atl_date": "2015-10-20T00:00:00.000Z",
    "roi": {
      "times": 64.34690956338092,
      "currency": "btc",
      "percentage": 6434.690956338091
    },
    "last_updated": "2024-04-24T21:08:38.817Z",
    "price_change_percentage_24h_in_currency": -2.2661782934892796
  }
]
""".data(using: .utf8)!
