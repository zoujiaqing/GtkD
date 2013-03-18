/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GstGhostPad.html
 * outPack = gstreamer
 * outFile = GhostPad
 * strct   = GstGhostPad
 * realStrct=
 * ctorStrct=GstPad
 * clss    = GhostPad
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GstPad
 * implements:
 * prefixes:
 * 	- gst_ghost_pad_
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gstreamer.Pad
 * 	- gstreamer.PadTemplate
 * structWrap:
 * 	- GstGhostPad* -> GhostPad
 * 	- GstPad* -> Pad
 * 	- GstPadTemplate* -> PadTemplate
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.GhostPad;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gstreamer.Pad;
private import gstreamer.PadTemplate;



private import gstreamer.Pad;

/**
 * Description
 * GhostPads are useful when organizing pipelines with GstBin like elements.
 * The idea here is to create hierarchical element graphs. The bin element
 * contains a sub-graph. Now one would like to treat the bin-element like any
 * other GstElement. This is where GhostPads come into play. A GhostPad acts as
 * a proxy for another pad. Thus the bin can have sink and source ghost-pads
 * that are associated with sink and source pads of the child elements.
 * If the target pad is known at creation time, gst_ghost_pad_new() is the
 * function to use to get a ghost-pad. Otherwise one can use gst_ghost_pad_new_no_target()
 * to create the ghost-pad and use gst_ghost_pad_set_target() to establish the
 * association later on.
 * Note that GhostPads add overhead to the data processing of a pipeline.
 * Last reviewed on 2005-11-18 (0.9.5)
 */
public class GhostPad : Pad
{
	
	/** the main Gtk struct */
	protected GstGhostPad* gstGhostPad;
	
	
	public GstGhostPad* getGhostPadStruct()
	{
		return gstGhostPad;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstGhostPad;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstGhostPad* gstGhostPad)
	{
		super(cast(GstPad*)gstGhostPad);
		this.gstGhostPad = gstGhostPad;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gstGhostPad = cast(GstGhostPad*)obj;
	}
	
	/**
	 */
	
	/**
	 * Create a new ghostpad with target as the target. The direction will be taken
	 * from the target pad. target must be unlinked.
	 * Will ref the target.
	 * Params:
	 * name = the name of the new pad, or NULL to assign a default name. [allow-none]
	 * target = the pad to ghost. [transfer none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, Pad target)
	{
		// GstPad * gst_ghost_pad_new (const gchar *name,  GstPad *target);
		auto p = gst_ghost_pad_new(Str.toStringz(name), (target is null) ? null : target.getPadStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_ghost_pad_new(Str.toStringz(name), (target is null) ? null : target.getPadStruct())");
		}
		this(cast(GstGhostPad*) p);
	}
	
	/**
	 * Create a new ghostpad without a target with the given direction.
	 * A target can be set on the ghostpad later with the
	 * gst_ghost_pad_set_target() function.
	 * The created ghostpad will not have a padtemplate.
	 * Params:
	 * name = the name of the new pad, or NULL to assign a default name. [allow-none]
	 * dir = the direction of the ghostpad
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, GstPadDirection dir)
	{
		// GstPad * gst_ghost_pad_new_no_target (const gchar *name,  GstPadDirection dir);
		auto p = gst_ghost_pad_new_no_target(Str.toStringz(name), dir);
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_ghost_pad_new_no_target(Str.toStringz(name), dir)");
		}
		this(cast(GstGhostPad*) p);
	}
	
	/**
	 * Create a new ghostpad with target as the target. The direction will be taken
	 * from the target pad. The template used on the ghostpad will be template.
	 * Will ref the target.
	 * Params:
	 * name = the name of the new pad, or NULL to assign a default name. [allow-none]
	 * target = the pad to ghost. [transfer none]
	 * templ = the GstPadTemplate to use on the ghostpad. [transfer none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, Pad target, PadTemplate templ)
	{
		// GstPad * gst_ghost_pad_new_from_template (const gchar *name,  GstPad *target,  GstPadTemplate *templ);
		auto p = gst_ghost_pad_new_from_template(Str.toStringz(name), (target is null) ? null : target.getPadStruct(), (templ is null) ? null : templ.getPadTemplateStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_ghost_pad_new_from_template(Str.toStringz(name), (target is null) ? null : target.getPadStruct(), (templ is null) ? null : templ.getPadTemplateStruct())");
		}
		this(cast(GstGhostPad*) p);
	}
	
	/**
	 * Create a new ghostpad based on templ, without setting a target. The
	 * direction will be taken from the templ.
	 * Params:
	 * name = the name of the new pad, or NULL to assign a default name. [allow-none]
	 * templ = the GstPadTemplate to create the ghostpad from. [transfer none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, PadTemplate templ)
	{
		// GstPad * gst_ghost_pad_new_no_target_from_template  (const gchar *name,  GstPadTemplate *templ);
		auto p = gst_ghost_pad_new_no_target_from_template(Str.toStringz(name), (templ is null) ? null : templ.getPadTemplateStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_ghost_pad_new_no_target_from_template(Str.toStringz(name), (templ is null) ? null : templ.getPadTemplateStruct())");
		}
		this(cast(GstGhostPad*) p);
	}
	
	/**
	 * Set the new target of the ghostpad gpad. Any existing target
	 * is unlinked and links to the new target are established. if newtarget is
	 * NULL the target will be cleared.
	 * Params:
	 * newtarget = the new pad target. [transfer none][allow-none]
	 * Returns: TRUE if the new target could be set. This function can return FALSE when the internal pads could not be linked. [transfer full]
	 */
	public int setTarget(Pad newtarget)
	{
		// gboolean gst_ghost_pad_set_target (GstGhostPad *gpad,  GstPad *newtarget);
		return gst_ghost_pad_set_target(gstGhostPad, (newtarget is null) ? null : newtarget.getPadStruct());
	}
	
	/**
	 * Get the target pad of gpad. Unref target pad after usage.
	 * Returns: the target GstPad, can be NULL if the ghostpad has no target set. Unref target pad after usage. [transfer full]
	 */
	public Pad getTarget()
	{
		// GstPad * gst_ghost_pad_get_target (GstGhostPad *gpad);
		auto p = gst_ghost_pad_get_target(gstGhostPad);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Pad)(cast(GstPad*) p);
	}
	
	/**
	 * Finish initialization of a newly allocated ghost pad.
	 * This function is most useful in language bindings and when subclassing
	 * GstGhostPad; plugin and application developers normally will not call this
	 * function. Call this function directly after a call to g_object_new
	 * (GST_TYPE_GHOST_PAD, "direction", dir, ..., NULL).
	 * Returns: TRUE if the construction succeeds, FALSE otherwise.
	 */
	public int construct()
	{
		// gboolean gst_ghost_pad_construct (GstGhostPad *gpad);
		return gst_ghost_pad_construct(gstGhostPad);
	}
	
	/**
	 * Invoke the default activate mode function of a ghost pad.
	 * Params:
	 * pad = the GstPad to activate or deactivate.
	 * parent = the parent of pad or NULL
	 * mode = the requested activation mode
	 * active = whether the pad should be active or not.
	 * Returns: TRUE if the operation was successful.
	 */
	public static int activateModeDefault(Pad pad, GstObject* parent, GstPadMode mode, int active)
	{
		// gboolean gst_ghost_pad_activate_mode_default (GstPad *pad,  GstObject *parent,  GstPadMode mode,  gboolean active);
		return gst_ghost_pad_activate_mode_default((pad is null) ? null : pad.getPadStruct(), parent, mode, active);
	}
	
	/**
	 * Invoke the default activate mode function of a proxy pad that is
	 * owned by a ghost pad.
	 * Params:
	 * pad = the GstPad to activate or deactivate.
	 * parent = the parent of pad or NULL
	 * mode = the requested activation mode
	 * active = whether the pad should be active or not.
	 * Returns: TRUE if the operation was successful.
	 */
	public static int internalActivateModeDefault(Pad pad, GstObject* parent, GstPadMode mode, int active)
	{
		// gboolean gst_ghost_pad_internal_activate_mode_default  (GstPad *pad,  GstObject *parent,  GstPadMode mode,  gboolean active);
		return gst_ghost_pad_internal_activate_mode_default((pad is null) ? null : pad.getPadStruct(), parent, mode, active);
	}
	
	/**
	 * Get the internal pad of pad. Unref target pad after usage.
	 * The internal pad of a GstGhostPad is the internally used
	 * pad of opposite direction, which is used to link to the target.
	 * Params:
	 * pad = the GstProxyPad
	 * Returns: the target GstProxyPad, can be NULL. Unref target pad after usage. [transfer full]
	 */
	public static GstProxyPad* proxyPadGetInternal(GstProxyPad* pad)
	{
		// GstProxyPad * gst_proxy_pad_get_internal (GstProxyPad *pad);
		return gst_proxy_pad_get_internal(pad);
	}
	
	/**
	 * Invoke the default iterate internal links function of the proxy pad.
	 * Params:
	 * pad = the GstPad to get the internal links of.
	 * parent = the parent of pad or NULL
	 * Returns: a GstIterator of GstPad, or NULL if pad has no parent. Unref each returned pad with gst_object_unref().
	 */
	public static GstIterator* proxyPadIterateInternalLinksDefault(Pad pad, GstObject* parent)
	{
		// GstIterator * gst_proxy_pad_iterate_internal_links_default  (GstPad *pad,  GstObject *parent);
		return gst_proxy_pad_iterate_internal_links_default((pad is null) ? null : pad.getPadStruct(), parent);
	}
	
	/**
	 * Invoke the default chain function of the proxy pad.
	 * Params:
	 * pad = a sink GstPad, returns GST_FLOW_ERROR if not.
	 * parent = the parent of pad or NULL
	 * buffer = the GstBuffer to send, return GST_FLOW_ERROR
	 * if not. [transfer full]
	 * Returns: a GstFlowReturn from the pad.
	 */
	public static GstFlowReturn proxyPadChainDefault(Pad pad, GstObject* parent, GstBuffer* buffer)
	{
		// GstFlowReturn gst_proxy_pad_chain_default (GstPad *pad,  GstObject *parent,  GstBuffer *buffer);
		return gst_proxy_pad_chain_default((pad is null) ? null : pad.getPadStruct(), parent, buffer);
	}
	
	/**
	 * Invoke the default chain list function of the proxy pad.
	 * Params:
	 * pad = a sink GstPad, returns GST_FLOW_ERROR if not.
	 * parent = the parent of pad or NULL
	 * list = the GstBufferList to send, return GST_FLOW_ERROR
	 * if not. [transfer full]
	 * Returns: a GstFlowReturn from the pad.
	 */
	public static GstFlowReturn proxyPadChainListDefault(Pad pad, GstObject* parent, GstBufferList* list)
	{
		// GstFlowReturn gst_proxy_pad_chain_list_default (GstPad *pad,  GstObject *parent,  GstBufferList *list);
		return gst_proxy_pad_chain_list_default((pad is null) ? null : pad.getPadStruct(), parent, list);
	}
	
	/**
	 * Invoke the default getrange function of the proxy pad.
	 * Params:
	 * pad = a src GstPad, returns GST_FLOW_ERROR if not.
	 * parent = the parent of pad
	 * offset = The start offset of the buffer
	 * size = The length of the buffer
	 * buffer = a pointer to hold the GstBuffer,
	 * returns GST_FLOW_ERROR if NULL. [out callee-allocates]
	 * Returns: a GstFlowReturn from the pad.
	 */
	public static GstFlowReturn proxyPadGetrangeDefault(Pad pad, GstObject* parent, ulong offset, uint size, GstBuffer** buffer)
	{
		// GstFlowReturn gst_proxy_pad_getrange_default (GstPad *pad,  GstObject *parent,  guint64 offset,  guint size,  GstBuffer **buffer);
		return gst_proxy_pad_getrange_default((pad is null) ? null : pad.getPadStruct(), parent, offset, size, buffer);
	}
}
