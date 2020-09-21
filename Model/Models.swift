//
//  Models.swift
//  HwahaeProject
//
//  Created by sapere4ude on 2020/08/27.
//  Copyright © 2020 sapere4ude. All rights reserved.
//

import Foundation

enum Gender {
    case male, female, other
}

struct User {
    let username: String
    let bio: String
    let name: (first: String, last: String)
    let profilePhoto: URL
    let birthDate: Date
    let gender: Gender
    let counts: UserCount
    let joinDate: Date
}

struct UserCount {
    let follwers: Int
    let follwing: Int
    let posts: Int
}

public enum UserPostType: String {
    case photo = "Photo"
    case video = "Video"
}

/// Represent a user post
public struct UserPost {
    let identifier: String
    let postType: UserPostType
    let thumnailImage: URL
    let postURL: URL // either video url or full resolution photo
    let caption: String?
    let likeCount: [CommentLike]
    let comments: [PostComment]
    let createdDate: Date
    let taggedUsers: [String]
    let owner: User
}

struct CommentLike {
    let username: String
    let commentIdentifier: String
    
}

struct PostComment {
    let identifier: String
    let username: String
    let text: String
    let createdDate: Date
    let likes: [CommentLike]
}

