import Files
import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct JustinKaufman: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://justinkaufman.com")!
    var name = "Justin Kaufman"
    var description = "The Projects of Justin Kaufman"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try JustinKaufman().publish(using: [
    .generateHTML(withTheme: .foundation),
    .outputToGithubPages(),
    .deploy(using: .gitHub("JUSTINMKAUFMAN/JustinKaufman", useSSH: false))
])
