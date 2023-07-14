//
//  DashboardModel.swift
//  Assignment
//
//  Created by Never Mind on 27/06/23.
//

import Foundation


struct DashboardBaseModel : Codable {
   
    let status : Bool?
    let statusCode : Int?
    let message : String?
    let support_whatsapp_number : String?
    let extra_income : Double?
    let total_links : Int?
    let total_clicks : Int?
    let today_clicks : Int?
    let top_source : String?
    let top_location : String?
    let startTime : String?
    let links_created_today : Int?
    let applied_campaign : Int?
    let data : Data?

    enum CodingKeys: String, CodingKey {

        case status = "status"
        case statusCode = "statusCode"
        case message = "message"
        case support_whatsapp_number = "support_whatsapp_number"
        case extra_income = "extra_income"
        case total_links = "total_links"
        case total_clicks = "total_clicks"
        case today_clicks = "today_clicks"
        case top_source = "top_source"
        case top_location = "top_location"
        case startTime = "startTime"
        case links_created_today = "links_created_today"
        case applied_campaign = "applied_campaign"
        case data = "data"
    }

}


struct Data : Codable {
    let recent_links : [Recent_links]?
    let top_links : [Top_links]?
    let overall_url_chart : Overall_url_chart?

    enum CodingKeys: String, CodingKey {

        case recent_links = "recent_links"
        case top_links = "top_links"
        case overall_url_chart = "overall_url_chart"
    }
}


struct Recent_links : Codable {
    let url_id : Int?
    let web_link : String?
    let smart_link : String?
    let title : String?
    let total_clicks : Int?
    let original_image : String?
    let thumbnail : String?
    let times_ago : String?
    let created_at : String?
    let domain_id : String?
    let url_prefix : String?
    let url_suffix : String?
    let app : String?

    enum CodingKeys: String, CodingKey {

        case url_id = "url_id"
        case web_link = "web_link"
        case smart_link = "smart_link"
        case title = "title"
        case total_clicks = "total_clicks"
        case original_image = "original_image"
        case thumbnail = "thumbnail"
        case times_ago = "times_ago"
        case created_at = "created_at"
        case domain_id = "domain_id"
        case url_prefix = "url_prefix"
        case url_suffix = "url_suffix"
        case app = "app"
    }

}


struct Top_links : Codable {
    let url_id : Int?
    let web_link : String?
    let smart_link : String?
    let title : String?
    let total_clicks : Int?
    let original_image : String?
    let thumbnail : String?
    let times_ago : String?
    let created_at : String?
    let domain_id : String?
    let url_prefix : String?
    let url_suffix : String?
    let app : String?

    enum CodingKeys: String, CodingKey {

        case url_id = "url_id"
        case web_link = "web_link"
        case smart_link = "smart_link"
        case title = "title"
        case total_clicks = "total_clicks"
        case original_image = "original_image"
        case thumbnail = "thumbnail"
        case times_ago = "times_ago"
        case created_at = "created_at"
        case domain_id = "domain_id"
        case url_prefix = "url_prefix"
        case url_suffix = "url_suffix"
        case app = "app"
    }

}


struct Overall_url_chart : Codable {
   
    let May_28_2023 : Int?
    let May_29_2023 : Int?
    let May_30_2023 : Int?
    let May_31_2023 : Int?
    let Jun_01_2023 : Int?
    let Jun_02_2023 : Int?
    let Jun_03_2023 : Int?
    let Jun_04_2023 : Int?
    let Jun_05_2023 : Int?
    let Jun_06_2023 : Int?
    let Jun_07_2023 : Int?
    let Jun_08_2023 : Int?
    let Jun_09_2023 : Int?
    let Jun_10_2023 : Int?
    let Jun_11_2023 : Int?
    let Jun_12_2023 : Int?
    let Jun_13_2023 : Int?
    let Jun_14_2023 : Int?
    let Jun_15_2023 : Int?
    let Jun_16_2023 : Int?
    let Jun_17_2023 : Int?
    let Jun_18_2023 : Int?
    let Jun_19_2023 : Int?
    let Jun_20_2023 : Int?
    let Jun_21_2023 : Int?
    let Jun_22_2023 : Int?
    let Jun_23_2023 : Int?
    let Jun_24_2023 : Int?
    let Jun_25_2023 : Int?
    let Jun_26_2023 : Int?
    let Jun_27_2023 : Int?

    enum CodingKeys: String, CodingKey {
     
        case May_28_2023 = "2023-05-28"
        case May_29_2023 = "2023-05-29"
        case May_30_2023 = "2023-05-30"
        case May_31_2023 = "2023-05-31"
        case Jun_01_2023 = "2023-06-01"
        case Jun_02_2023 = "2023-06-02"
        case Jun_03_2023 = "2023-06-03"
        case Jun_04_2023 = "2023-06-04"
        case Jun_05_2023 = "2023-06-05"
        case Jun_06_2023 = "2023-06-06"
        case Jun_07_2023 = "2023-06-07"
        case Jun_08_2023 = "2023-06-08"
        case Jun_09_2023 = "2023-06-09"
        case Jun_10_2023 = "2023-06-10"
        case Jun_11_2023 = "2023-06-11"
        case Jun_12_2023 = "2023-06-12"
        case Jun_13_2023 = "2023-06-13"
        case Jun_14_2023 = "2023-06-14"
        case Jun_15_2023 = "2023-06-15"
        case Jun_16_2023 = "2023-06-16"
        case Jun_17_2023 = "2023-06-17"
        case Jun_18_2023 = "2023-06-18"
        case Jun_19_2023 = "2023-06-19"
        case Jun_20_2023 = "2023-06-20"
        case Jun_21_2023 = "2023-06-21"
        case Jun_22_2023 = "2023-06-22"
        case Jun_23_2023 = "2023-06-23"
        case Jun_24_2023 = "2023-06-24"
        case Jun_25_2023 = "2023-06-25"
        case Jun_26_2023 = "2023-06-26"
        case Jun_27_2023 = "2023-06-27"
    }

}


struct LinksModel
{
    var title : String
    var web_link : String
    var times_ago : String
    var total_clicks : String
    var original_image : String
}


/*
 (url_id: Optional(146150), web_link: Optional("https://inopenapp.com/4o5qk"), smart_link: Optional("inopenapp.com/4o5qk"), title: Optional("651   Flats for Rent in Kormangla Bangalore, Bangalore Karnataka Without Brokerage - NoBroker Rental Properties in Kormangla Bangalore Karnataka Without Brokerage"), total_clicks: Optional(71), original_image: Optional("https://assets.nobroker.in/nb-new/public/List-Page/ogImage.png"), thumbnail: nil, times_ago: Optional("3 month ago"), created_at: Optional("2023-03-15T07:33:50.000Z"), domain_id: Optional("inopenapp.com/"), url_prefix: nil, url_suffix: Optional("4o5qk"), app: Optional("nobroker"))
 */
