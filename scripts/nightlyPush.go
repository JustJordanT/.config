package main

import (
	"fmt"
	"os"
	"os/exec"
)

func main() {
    // Check for the repository directory argument
    if len(os.Args) < 2 {
        fmt.Println("Usage: go run scriptname.go /path/to/your/git/repository")
        return
    }

    // Get the repository directory from the command-line argument
    repoDirectory := os.Args[1]

    // Execute "git add ." to stage all changes
    addCmd := exec.Command("git", "add", ".")
    addCmd.Dir = repoDirectory
    if err := addCmd.Run(); err != nil {
        fmt.Println("Error running git add:", err)
        return
    }

    // Execute "git commit -m 'Commit message'" to commit changes
    commitMessage := "Auto-commit by Go script"
    commitCmd := exec.Command("git", "commit", "-m", commitMessage)
    commitCmd.Dir = repoDirectory
    if err := commitCmd.Run(); err != nil {
        fmt.Println("Error running git commit:", err)
        return
    }

    // Execute "git push" to push changes to remote repository
    pushCmd := exec.Command("git", "push")
    pushCmd.Dir = repoDirectory
    if err := pushCmd.Run(); err != nil {
        fmt.Println("Error running git push:", err)
        return
    }

    fmt.Println("Successfully committed and pushed changes.")
}

