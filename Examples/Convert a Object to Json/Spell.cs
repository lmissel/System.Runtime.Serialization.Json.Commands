using System;
using System.IO;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Json;

namespace lmissel
{
    [DataContract]
    public class Spell
    {
        [DataMember(Name="cast", IsRequired=true)]
        public String cast;

        [DataMember(Name = "cooldown", IsRequired = true)]
        public String cooldown;

        [DataMember(Name = "powerCost", IsRequired = true)]
        public String cost;

        [DataMember(Name = "description", IsRequired = true)]
        public String description;

        [DataMember(Name = "icon", IsRequired = false)]
        public String icon;

        [DataMember(Name = "id", IsRequired = true)]
        public Int16 id;

        [DataMember(Name = "name", IsRequired = true)]
        public String name;

        [DataMember(Name = "range", IsRequired = true)]
        public String range;
    }
}