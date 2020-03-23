using System;
using System.IO;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Json;

namespace OpenData
{
    [DataContract]
    public class Gewerbegebiet
    {
        [DataMember(Name="IDENT")]
        public string IDENT { get; set; }

        [DataMember(Name="BEZEICH")]
        public string BEZEICH { get; set; }

        [DataMember(Name="GROESSE_HA")]
        public string GROESSE_HA { get; set; }

        [DataMember(Name="X")]
        public string X { get; set; }

        [DataMember(Name="Y")]
        public string Y { get; set; }
    }
}