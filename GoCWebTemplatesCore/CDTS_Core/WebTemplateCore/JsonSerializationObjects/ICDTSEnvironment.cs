﻿namespace CDTS_Core.WebTemplateCore.JsonSerializationObjects
{
    public interface ICDTSEnvironment
    {
        string Name
        {
            get;
            set;
        }

        string Path
        {
            get;
            set;
        }

        string CDN
        {
            get;
            set;
        }

        string SubTheme
        {
            get;
            set;
        }

        bool IsVersionRNCombined
        {
            get;
            set;
        }

        bool IsEncryptionModifiable
        {
            get;
            set;
        }

        string LocalPath
        {
            get;
            set;
        }

        string Theme
        {
            get;
            set;
        }

        string AppendToTitle
        {
            get;
            set;
        }
    }
}