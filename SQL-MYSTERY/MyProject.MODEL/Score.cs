using System;
using System.Collections.Generic;

namespace MyProject.MODEL;

public partial class Score
{
    public uint ScoreId { get; set; }

    public uint MysteryId { get; set; }

    public uint UserId { get; set; }

    public int? ScoreInt { get; set; }

    public virtual Mystery Mystery { get; set; } = null!;

    public virtual UserData User { get; set; } = null!;
}
