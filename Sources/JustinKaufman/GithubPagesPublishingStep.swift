import Files
import Foundation
import Publish

extension PublishingStep where Site == JustinKaufman {
    /// Copy website to Github Pages website location in repository.
    /// - parameter path: The path to the website root folder for Github Pages.
    static func outputToGithubPages(path: String = "docs") -> Self {
        step(named: "Copy Output to Github Pages Path '\(path)'") { context in
            let docsFolder = try context.createDeploymentFolder(
                withPrefix: "docs",
                configure: { folder in try folder.rename(to: "docs") }
            )
            try docsFolder.move(to: docsFolder.parent!.parent!)
        }
    }
}
