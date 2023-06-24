using System;
using System.Collections.Generic;

namespace MyProject.MODEL;

public partial class UserData
{
    public uint UserId { get; set; }

    public string? Login { get; set; }

    public string? HashPassword { get; set; }

    public string? Email { get; set; }

    public virtual ICollection<Score> Scores { get; set; } = new List<Score>();
}
