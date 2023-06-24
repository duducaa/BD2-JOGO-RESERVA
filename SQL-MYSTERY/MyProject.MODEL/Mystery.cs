using System;
using System.Collections.Generic;

namespace MyProject.MODEL;

public partial class Mystery
{
    public uint MysteryId { get; set; }

    public string? MysteryTitle { get; set; }

    public virtual ICollection<Score> Scores { get; set; } = new List<Score>();
}
